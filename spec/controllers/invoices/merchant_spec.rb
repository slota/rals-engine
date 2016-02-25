require 'rails_helper'

RSpec.describe Api::V1::Invoices::MerchantController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with item" do
      get :show, format: :json, id: 1
      merchant = JSON.parse(response.body)

      expect(response).to be_success
      expect(merchant["name"]).to eq "Jesus"
    end
  end
end
