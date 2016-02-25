require 'rails_helper'

RSpec.describe Api::V1::InvoiceItemsController, type: :controller do
  fixtures :invoice_items
  describe "#index" do
    it "responds with all invoice items" do
      get :index, format: :json
      invoice_items = JSON.parse(response.body)
      expect(response).to be_success
      expect(invoice_items.first['unit_price']).to eq "727"
      expect(invoice_items.first['quantity']).to eq 1
      expect(invoice_items.first['invoice_id']).to eq 1
      expect(invoice_items.first['item_id']).to eq 1

      expect(invoice_items.last['unit_price']).to eq "636"
      expect(invoice_items.last['quantity']).to eq 2
      expect(invoice_items.last['invoice_id']).to eq 2
      expect(invoice_items.last['item_id']).to eq 2
    end
  end

  describe "#show" do
    it "responds with first invoice item" do
      get :show, format: :json, id: 1
      invoice_item = JSON.parse(response.body)
      expect(response).to be_success
      expect(invoice_item['unit_price']).to eq "727"
      expect(invoice_item['quantity']).to eq 1
      expect(invoice_item['invoice_id']).to eq 1
      expect(invoice_item['item_id']).to eq 1
    end
  end
end
