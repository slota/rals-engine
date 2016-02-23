class Api::V1::InvoiceItems::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with InvoiceItem.where("#{invoice_items_params.keys.join} like ?", "%#{invoice_items_params.values.join}%")
  end

  private

  def invoice_items_params
    params.permit(:quantity, :unit_price, :invoice_id, :item_id, :created_at, :updated_at)
  end

end
