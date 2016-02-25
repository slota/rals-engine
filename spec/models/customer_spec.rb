require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "customer model testing" do
    it "finds favorite merchant" do
      favorite_merchant = Customer.first.favorite_merchant

      expect(favorite_merchant["name"]).to eq "Jesus"
      expect(favorite_merchant["id"]).to eq 1
    end
  end
end
