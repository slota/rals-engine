require 'rails_helper'

RSpec.describe Api::V1::Merchants::MostRevenueController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with most revenue" do
      get :index, format: :json, quantity: 1
      merchant = JSON.parse(response.body)

      expect(response).to be_success
      expect(merchant.first["name"]).to eq "Jesus"
    end
  end
end
