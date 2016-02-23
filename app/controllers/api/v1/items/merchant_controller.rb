class Api::V1::Items::MerchantController < ApplicationController
  respond_to :json

  def show
    respond_with Item.find_by(id: params[:id]).merchant
  end
end
