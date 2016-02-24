class Api::V1::InvoiceItems::FindController < ApplicationController
  respond_to :json

  def index
    respond_with InvoiceItem.where(invoice_item_params)
  end

  def show
    respond_with InvoiceItem.find_by(invoice_item_params)
  end

  private

  def invoice_item_params
    params.permit(:id, :quantity, :unit_price, :invoice_id, :item_id, :created_at, :updated_at)
  end

end
