class Api::V1::Customers::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with Customer.where("#{customer_params.keys.join} like ?", "%#{customer_params.values.join}%")
  end

  private

  def customer_params
    params.permit(:first_name, :last_name, :created_at, :updated_at)
  end

end
