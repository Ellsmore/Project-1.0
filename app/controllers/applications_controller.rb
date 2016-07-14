class ApplicationsController < ApplicationController
  before_filter :authorise_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @applications = Application.all
  end

  def new
    @application = Application.new
  end

  def create
    application = Application.create application_params
    redirect_to application
  end

  def edit
    @application = Application.find params[:id]
  end

  def update
    application = Application.find params[:id]
    application.update application_params
    redirect_to application
  end

  def show
    @application = Application.find params[:id]
  end

  def destroy
    application = Application.find params[:id]
    application.destroy
    redirect_to applications_path
  end

  private
  def application_params
    params.require(:application).permit(:accepted, :short_list, :description)
  end
end
