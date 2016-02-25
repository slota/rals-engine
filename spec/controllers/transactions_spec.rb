require "rails_helper"

RSpec.describe Api::V1::TransactionsController, type: :controller do
  fixtures :transactions
  describe "#index" do
    it "responds with all transactions" do
      get :index, format: :json
      transactions = JSON.parse(response.body)
      expect(response).to be_success
      expect(transactions.first["invoice_id"]).to eq 1
      expect(transactions.first["credit_card_number"]).to eq "123"
      expect(transactions.first["result"]).to eq "sweet"

      expect(transactions.last["invoice_id"]).to eq 2
      expect(transactions.last["credit_card_number"]).to eq "456"
      expect(transactions.last["result"]).to eq "dope"
    end
  end

  describe "#show" do
    it "responds with transaction 2" do
      get :show, format: :json, id: 2
      transaction = JSON.parse(response.body)
      expect(response).to be_success
      expect(transaction["invoice_id"]).to eq 2
      expect(transaction["credit_card_number"]).to eq "456"
      expect(transaction["result"]).to eq "dope"
    end
  end
end
