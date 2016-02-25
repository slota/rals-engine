require 'rails_helper'

RSpec.describe Api::V1::MerchantsController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with all merchants" do
      get :index, format: :json
      merchants = JSON.parse(response.body)
      expect(response).to be_success
      expect(merchants.first["name"]).to eq "Jesus"
      expect(merchants.last["name"]).to eq "Mohammed"
    end
  end

  describe "#show" do
    it "responds with merchant 1" do
      get :show, format: :json, id: 1
      item = JSON.parse(response.body)
      expect(response).to be_success
      expect(item["name"]).to eq "Jesus"
    end
  end
end
