require 'rails_helper'

RSpec.describe Api::V1::Merchants::InvoicesController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with invoice" do
      get :index, format: :json, id: 1
      invoices = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoices.first["status"]).to eq "less go"
      expect(invoices.first["customer_id"]).to eq 1
      expect(invoices.first["merchant_id"]).to eq 1
    end
  end
end
