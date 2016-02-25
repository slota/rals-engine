class Customer < ActiveRecord::Base
  has_many :invoices
  has_many :transactions, through: :invoices

  def favorite_merchant
    invoices.paid.group(:merchant).count.sort_by { |k, v| -v}.first[0]
  end
end
