class Merchant < ActiveRecord::Base
  has_many :items
  has_many :invoices
  has_many :invoice_items, through: :invoices
  has_many :transactions, through: :invoices

  def revenue
    invoices.paid.joins(:invoice_items).sum("quantity * unit_price")
  end

  def revenue_by_date(date)
    invoices.where(created_at: date).paid.joins(:invoice_items).sum("quantity * unit_price")
  end

  def favorite_customer
    invoices.paid.group(:customer_id).count.sort_by{ |k, v| -v }.first[0]
  end

  def customers_with_pending_invoices
    invoices.pending.group(:customer_id).count.keys
  end

  def self.most_revenue(quantity)
    Merchant.all.map { |merchant| merchant.revenue }.sort_by { |v| -v }.take(quantity.to_i)
  end
end
