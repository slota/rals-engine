class Api::V1::Merchants::MostRevenueController < ApplicationController
  respond_to :json

  def index
    respond_with Merchant.all
    respond_with Merchant.find_by(id: params[:id]).items
  end
end
