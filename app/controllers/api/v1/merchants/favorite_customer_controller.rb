class Api::V1::Merchants::FavoriteCustomerController < ApplicationController
  respond_to :json

  def show
    respond_with ({id: Merchant.find_by(id: params[:id]).favorite_customer})
  end
end
