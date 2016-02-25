require 'rails_helper'

RSpec.describe Api::V1::Items::FindController, type: :controller do
  fixtures :items
  describe "#index" do
    it "responds with all items with id" do
      get :index, format: :json, id: 1
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item.first["name"]).to eq "John's Boots"
      expect(item.first["description"]).to eq "Sturdy, Rugged"
      expect(item.first["unit_price"]).to eq "4.5"
      expect(item.first["merchant_id"]).to eq 1
      expect(item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with name" do
      get :index, format: :json, name: "John's Boots"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item.first["name"]).to eq "John's Boots"
      expect(item.first["description"]).to eq "Sturdy, Rugged"
      expect(item.first["unit_price"]).to eq "4.5"
      expect(item.first["merchant_id"]).to eq 1
      expect(item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item.first["name"]).to eq "John's Boots"
      expect(item.first["description"]).to eq "Sturdy, Rugged"
      expect(item.first["unit_price"]).to eq "4.5"
      expect(item.first["merchant_id"]).to eq 1
      expect(item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item.first["name"]).to eq "John's Boots"
      expect(item.first["description"]).to eq "Sturdy, Rugged"
      expect(item.first["unit_price"]).to eq "4.5"
      expect(item.first["merchant_id"]).to eq 1
      expect(item.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all items with id" do
      get :show, format: :json, id: 1
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item["name"]).to eq "John's Boots"
      expect(item["description"]).to eq "Sturdy, Rugged"
      expect(item["unit_price"]).to eq "4.5"
      expect(item["merchant_id"]).to eq 1
      expect(item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with name" do
      get :show, format: :json, name: "John's Boots"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item["name"]).to eq "John's Boots"
      expect(item["description"]).to eq "Sturdy, Rugged"
      expect(item["unit_price"]).to eq "4.5"
      expect(item["merchant_id"]).to eq 1
      expect(item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item["name"]).to eq "John's Boots"
      expect(item["description"]).to eq "Sturdy, Rugged"
      expect(item["unit_price"]).to eq "4.5"
      expect(item["merchant_id"]).to eq 1
      expect(item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all items with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      item = JSON.parse(response.body)

      expect(response).to be_success
      expect(item["name"]).to eq "John's Boots"
      expect(item["description"]).to eq "Sturdy, Rugged"
      expect(item["unit_price"]).to eq "4.5"
      expect(item["merchant_id"]).to eq 1
      expect(item["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(item["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
