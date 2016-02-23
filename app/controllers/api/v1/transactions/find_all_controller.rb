class Api::V1::Transactions::FindAllController < ApplicationController
  respond_to :json

  def index
    respond_with Transaction.where("#{transaction_params.keys.join} like ?", "%#{transaction_params.values.join}%")
  end

  private

  def transaction_params
    params.permit(:invoice_id, :credit_card_number, :credit_card_expiration_date, :result, :created_at, :updated_at)
  end

end
