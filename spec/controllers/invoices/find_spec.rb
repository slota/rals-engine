require 'rails_helper'

RSpec.describe Api::V1::Invoices::FindController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with all invoices with id" do
      get :index, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["customer_id"]).to eq 1
      expect(invoice_item.first["status"]).to eq "less go"
      expect(invoice_item.first["merchant_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with customer_id" do
      get :index, format: :json, customer_id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["customer_id"]).to eq 1
      expect(invoice_item.first["status"]).to eq "less go"
      expect(invoice_item.first["merchant_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["customer_id"]).to eq 1
      expect(invoice_item.first["status"]).to eq "less go"
      expect(invoice_item.first["merchant_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["customer_id"]).to eq 1
      expect(invoice_item.first["status"]).to eq "less go"
      expect(invoice_item.first["merchant_id"]).to eq 1
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all invoices with id" do
      get :show, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["customer_id"]).to eq 1
      expect(invoice_item["status"]).to eq "less go"
      expect(invoice_item["merchant_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with customer_id" do
      get :show, format: :json, customer_id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["customer_id"]).to eq 1
      expect(invoice_item["status"]).to eq "less go"
      expect(invoice_item["merchant_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["customer_id"]).to eq 1
      expect(invoice_item["status"]).to eq "less go"
      expect(invoice_item["merchant_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all invoices with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["customer_id"]).to eq 1
      expect(invoice_item["status"]).to eq "less go"
      expect(invoice_item["merchant_id"]).to eq 1
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
