require 'rails_helper'

RSpec.describe Api::V1::Customers::FavoriteMerchantController, type: :controller do
  fixtures :customers
  describe "#show" do
    it "responds with favorite merchant" do
      get :show, format: :json, id: 1
      favorite_merchant = JSON.parse(response.body)

      expect(favorite_merchant["name"]).to eq "Jesus"
      expect(favorite_merchant["id"]).to eq 1
    end
  end
end
