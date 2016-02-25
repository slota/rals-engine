require 'rails_helper'

RSpec.describe Api::V1::Invoices::ItemsController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with item" do
      get :index, format: :json, id: 1
      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.first["name"]).to eq "John's Boots"
      expect(items.first["description"]).to eq "Sturdy, Rugged"
      expect(items.first["unit_price"]).to eq "4.5"
      expect(items.first["merchant_id"]).to eq 1
    end
  end
end
