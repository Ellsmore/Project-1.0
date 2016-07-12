class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    candidate = Candidate.create candidate_params
    redirect_to candidate
  end

  def edit
    @candidate = Candidate.find params[:id]
  end

  def update
    candidate = Candidate.find params[:id]
    candidate.update candidate_params
    redirect_to candidate
  end

  def show
    @candidate = Candidate.find params[:id]
  end

  def destroy
    candidate = Candidate.find params[:id]
    candidate.destroy
    redirect_to candidates_path
  end

  private
  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :dob, :email, :candidate_contact_number, :gender, :residency_status, :residental_address, :residental_suburb, :residental_state, :residental_postcode, :postal_address, :postal_suburb, :postal_state, :postal_postcode, :introduction, :education, :profession, :skills, :other_skills, :certificates_licenses, :job_title, :job_duration, :company_name, :job_description, :reference_name, :reference_contact_number, :picture, :resume, :photo_id, :consent_to_tests, :travelling_distance, :vehicle_access, :availability, :used_marketing_channel, :used_agencies)
  end
end
