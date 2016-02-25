require "rails_helper"

RSpec.describe Api::V1::ItemsController, type: :controller do
  fixtures :items
  describe "#index" do
    it "responds with all items" do
      get :index, format: :json
      items = JSON.parse(response.body)
      expect(response).to be_success
      expect(items.first["name"]).to eq "John's Boots"
      expect(items.first["description"]).to eq "Sturdy, Rugged"
      expect(items.first["unit_price"]).to eq "4.5"
      expect(items.first["merchant_id"]).to eq 1

      expect(items.last["name"]).to eq "Jamey's Slime"
      expect(items.last["description"]).to eq "Magical, Strong"
      expect(items.last["unit_price"]).to eq "6.99"
      expect(items.last["merchant_id"]).to eq 2
    end
  end

  describe "#show" do
    it "responds with item 1" do
      get :show, format: :json, id: 1
      item = JSON.parse(response.body)
      expect(item["name"]).to eq "John's Boots"
      expect(item["description"]).to eq "Sturdy, Rugged"
      expect(item["unit_price"]).to eq "4.5"
      expect(item["merchant_id"]).to eq 1
    end
  end
end
