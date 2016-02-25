require 'rails_helper'

RSpec.describe Api::V1::Items::MerchantController, type: :controller do
  fixtures :items
  describe "#index" do
    it "responds with merchant" do
      get :show, format: :json, id: 1
      merchant = JSON.parse(response.body)

      expect(response).to be_success
      expect(merchant["name"]).to eq "Jesus"
    end
  end
end
