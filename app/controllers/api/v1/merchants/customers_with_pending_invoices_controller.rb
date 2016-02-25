class Api::V1::Merchants::CustomersWithPendingInvoicesController < ApplicationController
  respond_to :json

  def index
    respond_with Customer.find(Merchant.find_by(id: params[:id]).customers_with_pending_invoices)
  end
end
