require 'rails_helper'

RSpec.describe Api::V1::Merchants::RandomController, type: :controller do
  fixtures :merchants
  describe "#index" do
    it "responds with items" do
      get :show, format: :json
      random = JSON.parse(response.body)

      expect(response).to be_success
    end
  end
end
