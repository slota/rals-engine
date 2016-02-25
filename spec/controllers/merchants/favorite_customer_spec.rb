require 'rails_helper'

RSpec.describe Api::V1::Merchants::FavoriteCustomerController, type: :controller do
  fixtures :merchants
  describe "#show" do
    it "responds with favorite customer" do
      get :show, format: :json, id: 1
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer.values).to eq [1]
    end
  end
end
