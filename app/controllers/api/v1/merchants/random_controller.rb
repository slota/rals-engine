class Api::V1::Merchants::RandomController < ApplicationController
  respond_to :json

  def show
    respond_with Merchant.offset(rand(Merchant.count)).first
  end
end
