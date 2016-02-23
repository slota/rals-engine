class CustomersFindAllController
  respond_to :json

  def index
    binding.pry
    respond_with Customer.find_by(id: params[:id])
  end
end
