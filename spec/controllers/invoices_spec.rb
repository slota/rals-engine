require 'rails_helper'

RSpec.describe Api::V1::InvoicesController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with all invoices" do
      get :index, format: :json
      invoices = JSON.parse(response.body)
      expect(response).to be_success
      expect(invoices.first["status"]).to eq "less go"
      expect(invoices.first["customer_id"]).to eq 1
      expect(invoices.first["merchant_id"]).to eq 1

      expect(invoices.last["status"]).to eq "okk"
      expect(invoices.last["customer_id"]).to eq 2
      expect(invoices.last["merchant_id"]).to eq 2
    end
  end

  describe "#show" do
    it "responds with invoice 2" do
      get :show, format: :json, id: 2
      invoice = JSON.parse(response.body)
      expect(response).to be_success
      expect(invoice["status"]).to eq "okk"
      expect(invoice["customer_id"]).to eq 2
      expect(invoice["merchant_id"]).to eq 2
    end
  end
end
