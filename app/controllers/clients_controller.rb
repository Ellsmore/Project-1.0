class ClientsController < ApplicationController
  before_filter :authorise_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    client = Client.create candidate_params
    redirect_to client
  end

  def edit
    @client = Client.find params[:id]
  end

  def update
    client = Client.find params[:id]
    client.update client_params
    redirect_to client
  end

  def show
    @client = Client.find params[:id]
  end

  def destroy
    client = Client.find params[:id]
    client.destroy
    redirect_to clients_path
  end

  private
  def candidate_params
    params.require(:client).permit(:business_name, :address, :suburb, :state, :postcode, :contact_name, :mobile_number, :phone_number)
  end
end
