require 'rails_helper'

RSpec.describe Api::V1::Customers::InvoicesController, type: :controller do
  fixtures :customers
  describe "#index" do
    it "responds with invoices" do
      get :index, format: :json, id: 1
      invoices = JSON.parse(response.body)

      expect(invoices.first["status"]).to eq "less go"
      expect(invoices.first["customer_id"]).to eq 1
      expect(invoices.first["merchant_id"]).to eq 1
    end
  end
end
