class Api::V1::InvoiceItems::ItemController < ApplicationController
  respond_to :json

  def show
    respond_with InvoiceItem.find_by(id: params[:id]).item
  end
end
