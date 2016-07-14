class JobAdsController < ApplicationController
  before_filter :authorise_user, only:[:new, :create, :edit, :update, :destroy]

  def index
    @job_ads = JobAd.all
  end

  def new
    @job_ad = JobAd.new
  end

  def create
    job_ad = JobAd.create job_ad_params
    redirect_to job_ad
  end

  def edit
    @job_ad = JobAd.find params[:id]
  end

  def update
    job_ad = JobAd.find params[:id]
    job_ad.update job_ad_params
    redirect_to job_ad
  end

  def show
    @job_ad = JobAd.find params[:id]
  end

  def destroy
    job_ad = JobAd.find params[:id]
    job_ad.destroy
    redirect_to job_ads_path
  end

  private
  def job_ad_params
    params.require(:job_ad).permit(:title, :description, :employment_type, :address, :suburb, :state, :postcode, :skills, :liscenses_certificates, :drivers_license, :transport, :client_id, :job_ad_id)
  end
end
