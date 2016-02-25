require 'rails_helper'

RSpec.describe Api::V1::Transactions::FindController, type: :controller do
  fixtures :transactions
  describe "#index" do
    it "responds with all transactions with id" do
      get :index, format: :json, id: 1
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction.first["invoice_id"]).to eq 1
      expect(transaction.first["credit_card_number"]).to eq "123"
      expect(transaction.first["result"]).to eq "sweet"
      expect(transaction.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with result" do
      get :index, format: :json, result: "sweet"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction.first["invoice_id"]).to eq 1
      expect(transaction.first["credit_card_number"]).to eq "123"
      expect(transaction.first["result"]).to eq "sweet"
      expect(transaction.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction.first["invoice_id"]).to eq 1
      expect(transaction.first["credit_card_number"]).to eq "123"
      expect(transaction.first["result"]).to eq "sweet"
      expect(transaction.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction.first["invoice_id"]).to eq 1
      expect(transaction.first["credit_card_number"]).to eq "123"
      expect(transaction.first["result"]).to eq "sweet"
      expect(transaction.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all transactions with id" do
      get :show, format: :json, id: 1
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction["invoice_id"]).to eq 1
      expect(transaction["credit_card_number"]).to eq "123"
      expect(transaction["result"]).to eq "sweet"
      expect(transaction["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with result" do
      get :show, format: :json, result: "sweet"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction["invoice_id"]).to eq 1
      expect(transaction["credit_card_number"]).to eq "123"
      expect(transaction["result"]).to eq "sweet"
      expect(transaction["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction["result"]).to eq "sweet"
      expect(transaction["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all transactions with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      transaction = JSON.parse(response.body)

      expect(response).to be_success
      expect(transaction["result"]).to eq "sweet"
      expect(transaction["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(transaction["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
