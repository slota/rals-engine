require 'rails_helper'

RSpec.describe Api::V1::Customers::TransactionsController, type: :controller do
  fixtures :transactions
  describe "#index" do
    it "responds with index" do
      get :index, format: :json, id: 1
      transactions = JSON.parse(response.body)

      expect(response).to be_success
      expect(transactions.first["invoice_id"]).to eq 1
      expect(transactions.first["credit_card_number"]).to eq "123"
      expect(transactions.first["result"]).to eq "sweet"
    end
  end
end
