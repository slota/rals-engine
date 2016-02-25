require 'rails_helper'

RSpec.describe Api::V1::Customers::FindController, type: :controller do
  fixtures :customers
  describe "#index" do
    it "responds with all customers with id" do
      get :index, format: :json, id: 1
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer.first["first_name"]).to eq "Donald"
      expect(customer.first["last_name"]).to eq "Trump"
      expect(customer.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with first_name" do
      get :index, format: :json, first_name: "Donald"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer.first["first_name"]).to eq "Donald"
      expect(customer.first["last_name"]).to eq "Trump"
      expect(customer.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with updated_at" do
      get :index, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer.first["first_name"]).to eq "Donald"
      expect(customer.first["last_name"]).to eq "Trump"
      expect(customer.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with created_at" do
      get :index, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer.first["first_name"]).to eq "Donald"
      expect(customer.first["last_name"]).to eq "Trump"
      expect(customer.first["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer.first["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end

  describe "#show" do
    it "responds with all customers with id" do
      get :show, format: :json, id: 1
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer["first_name"]).to eq "Donald"
      expect(customer["last_name"]).to eq "Trump"
      expect(customer["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with first_name" do
      get :show, format: :json, first_name: "Donald"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer["first_name"]).to eq "Donald"
      expect(customer["last_name"]).to eq "Trump"
      expect(customer["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with updated_at" do
      get :show, format: :json, updated_at: "2012-03-25 09:54:09 UTC"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer["first_name"]).to eq "Donald"
      expect(customer["last_name"]).to eq "Trump"
      expect(customer["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end

    it "responds with all customers with created_at" do
      get :show, format: :json, created_at: "2012-03-25 09:54:09 UTC"
      customer = JSON.parse(response.body)

      expect(response).to be_success
      expect(customer["first_name"]).to eq "Donald"
      expect(customer["last_name"]).to eq "Trump"
      expect(customer["created_at"]).to eq "2012-03-25T09:54:09.000Z"
      expect(customer["updated_at"]).to eq "2012-03-25T09:54:09.000Z"
    end
  end
end
