require 'rails_helper'

RSpec.describe Api::V1::Transactions::InvoiceController, type: :controller do
  fixtures :transactions
  describe "#show" do
    it "responds with invoice" do
      get :show, format: :json, id: 1
      invoice = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice["status"]).to eq "less go"
      expect(invoice["customer_id"]).to eq 1
      expect(invoice["merchant_id"]).to eq 1
    end
  end
end
