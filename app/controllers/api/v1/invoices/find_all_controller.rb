class Api::V1::Invoices::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with Invoice.where("#{invoice_params.keys.join} like ?", "%#{invoice_params.values.join}%")
  end

  private

  def invoice_params
    params.permit(:customer_id, :merchant_id, :status, :created_at, :updated_at)
  end

end
