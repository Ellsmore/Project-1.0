class JobAdsController < ApplicationController
  before_filter :authorise_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @job_ads = Job_ad.all
  end

  def new
    @job_ad = Job_ad.new
  end

  def create
    job_ad = Job_ad.create job_ad_params
    redirect_to job_ad
  end

  def edit
    @job_ad = Job_ad.find params[:id]
  end

  def update
    job_ad = Job_ad.find params[:id]
    job_ad.update job_ad_params
    redirect_to job_ad
  end

  def show
    @job_ad = Job_ad.find params[:id]
  end

  def destroy
    job_ad = Job_ad.find params[:id]
    job_ad.destroy
    redirect_to job_ads_path
  end

  private
  def job_ad_params
    params.require(:job_ad).permit(:title, :description, :employment_type, :address, :suburb, :state, :postcode, :skills, :liscenses_certificates, :drivers_license, :transport)
  end
end
