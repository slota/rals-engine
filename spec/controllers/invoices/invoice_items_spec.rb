require 'rails_helper'

RSpec.describe Api::V1::Invoices::InvoiceItemsController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with invoice item" do
      get :index, format: :json, id: 1
      invoice_items = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_items.first['unit_price']).to eq "727.0"
      expect(invoice_items.first['quantity']).to eq 1
      expect(invoice_items.first['invoice_id']).to eq 1
      expect(invoice_items.first['item_id']).to eq 1
    end
  end
end
