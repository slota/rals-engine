class Api::V1::Merchants::RevenueController < ApplicationController
  respond_to :json

  def show
    if params[:date]
      respond_with ({revenue: Merchant.find_by(id:params[:id]).revenue_by_date(params[:date])})
    else
      respond_with ({revenue: Merchant.find_by(id: params[:id]).revenue})
    end
  end
end
