require 'rails_helper'

RSpec.describe Api::V1::Invoices::CustomerController, type: :controller do
  fixtures :invoices
  describe "#index" do
    it "responds with customer" do
      get :show, format: :json, id: 1
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer['first_name']).to eq 'Donald'
      expect(customer['last_name']).to eq 'Trump'
    end
  end
end
