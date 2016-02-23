class Api::V1::Merchants::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with Merchant.where("#{merchant_params.keys.join} like ?", "%#{merchant_params.values.join}%")
  end

  private

  def merchant_params
    params.permit(:name)
  end

end
