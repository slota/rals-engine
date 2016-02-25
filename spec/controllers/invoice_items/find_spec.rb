require 'rails_helper'

RSpec.describe Api::V1::InvoiceItems::FindController, type: :controller do
  fixtures :invoice_items
  describe "#index" do
    it "responds with all invoice_items with id" do
      get :index, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["quantity"]).to eq 1
      expect(invoice_item.first["unit_price"]).to eq "727.0"
      expect(invoice_item.first["invoice_id"]).to eq 1
      expect(invoice_item.first["item_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with quantity" do
      get :index, format: :json, quantity: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["quantity"]).to eq 1
      expect(invoice_item.first["unit_price"]).to eq "727.0"
      expect(invoice_item.first["invoice_id"]).to eq 1
      expect(invoice_item.first["item_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["quantity"]).to eq 1
      expect(invoice_item.first["unit_price"]).to eq "727.0"
      expect(invoice_item.first["invoice_id"]).to eq 1
      expect(invoice_item.first["item_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["quantity"]).to eq 1
      expect(invoice_item.first["unit_price"]).to eq "727.0"
      expect(invoice_item.first["invoice_id"]).to eq 1
      expect(invoice_item.first["item_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all invoice_items with id" do
      get :show, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["quantity"]).to eq 1
      expect(invoice_item["unit_price"]).to eq "727.0"
      expect(invoice_item["invoice_id"]).to eq 1
      expect(invoice_item["item_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with quantity" do
      get :show, format: :json, quantity: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["quantity"]).to eq 1
      expect(invoice_item["unit_price"]).to eq "727.0"
      expect(invoice_item["invoice_id"]).to eq 1
      expect(invoice_item["item_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["quantity"]).to eq 1
      expect(invoice_item["unit_price"]).to eq "727.0"
      expect(invoice_item["invoice_id"]).to eq 1
      expect(invoice_item["item_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoice_items with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["quantity"]).to eq 1
      expect(invoice_item["unit_price"]).to eq "727.0"
      expect(invoice_item["invoice_id"]).to eq 1
      expect(invoice_item["item_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
