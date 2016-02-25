class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :merchant

  has_many :invoice_items
  has_many :transactions
  has_many :items, through: :invoice_items

  scope :paid, -> { joins(:transactions).where(transactions: {result: "success"}) }
  scope :pending, -> { joins(:transactions).where(transactions: {result: "failed"}) }
end
