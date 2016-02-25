require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe "merchant model testing" do
    it "finds revenue" do
      merchant = Merchant.first.revenue

      expect(merchant.to_digits).to eq "727.0"
    end

    it "finds revenue by date" do
      merchant = Merchant.first.revenue_by_date("2012-03-25 09:54:09 UTC")

      expect(merchant.to_digits).to eq "727.0"
    end

    it "finds favorite customer" do
      customer = Merchant.first.favorite_customer

      expect(customer).to eq 1
    end

    it "finds customer with pending" do
      customer = Customer.find(Merchant.last.customers_with_pending_invoices)

      expect(customer.first['first_name']).to eq 'Hillary'
      expect(customer.first['last_name']).to eq 'Clinton'
    end

    it "finds max revenue" do
      merchant = Merchant.most_revenue(1)

      expect(merchant.first['name']).to eq 'Jesus'
    end
  end
end
