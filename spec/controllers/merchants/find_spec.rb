require 'rails_helper'

RSpec.describe Api::V1::Merchants::FindController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with all merchants with id" do
      get :index, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["name"]).to eq "Jesus"
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with name" do
      get :index, format: :json, name: "Jesus"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["name"]).to eq "Jesus"
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["name"]).to eq "Jesus"
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item.first["name"]).to eq "Jesus"
      expect(invoice_item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all merchants with id" do
      get :show, format: :json, id: 1
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["name"]).to eq "Jesus"
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with name" do
      get :show, format: :json, name: "Jesus"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["name"]).to eq "Jesus"
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["name"]).to eq "Jesus"
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all merchants with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      invoice_item = JSON.parse(response.body)

      expect(response).to be_success
      expect(invoice_item["name"]).to eq "Jesus"
      expect(invoice_item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(invoice_item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
