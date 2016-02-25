require 'rails_helper'

RSpec.describe Api::V1::Merchants::RevenueController, type: :controller do
  fixtures :merchants
  describe "#show" do
    it "responds with revenue" do
      get :show, format: :json, id: 1
      merchant = JSON.parse(response.body)

      expect(response).to be_success
      expect(merchant.values).to eq ["727.0"]
    end

    it "responds with revenue" do
      get :show, format: :json, id: 2, date: "2012-03-27 14:53:59 UTC"
      merchant = JSON.parse(response.body)

      expect(response).to be_success
      expect(merchant.values).to eq ["0.0"]
    end
  end
end
