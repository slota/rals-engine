require 'rails_helper'

RSpec.describe Api::V1::Merchants::CustomersWithPendingInvoicesController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with customer" do
      get :index, format: :json, id: 2
      customers = JSON.parse(response.body)

      expect(response).to be_success
      expect(customers.first['first_name']).to eq 'Hillary'
      expect(customers.first['last_name']).to eq 'Clinton'
    end
  end
end
