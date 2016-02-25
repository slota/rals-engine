require 'rails_helper'

RSpec.describe Api::V1::CustomersController, type: :controller do
  fixtures :customers
  describe "#index" do
    it "responds with all customers" do
      get :index, format: :json
      customers = JSON.parse(response.body)
      expect(response).to be_success
      expect(customers.first['first_name']).to eq 'Donald'
      expect(customers.last['first_name']).to eq 'Hillary'
    end
  end

  fixtures :customers
  describe "#show" do
    it "responds with a customer" do
      get :show, format: :json, id: 1
      customer = JSON.parse(response.body)
      expect(response).to be_success
      expect(customer['first_name']).to eq 'Donald'
      expect(customer['last_name']).to eq 'Trump'
    end
  end
end
