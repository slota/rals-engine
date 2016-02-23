class Api::V1::Items::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with Item.where("#{item_params.keys.join} like ?", "%#{item_params.values.join}%")
  end

  private

  def item_params
    params.permit(:name, :description, :unit_price, :merchant_id, :created_at, :updated_at)
  end

end
