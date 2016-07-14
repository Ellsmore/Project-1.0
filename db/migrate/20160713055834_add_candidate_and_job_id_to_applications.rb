class AddCandidateAndJobIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :candidate_id, :integer
    add_column :applications, :job_ad_id, :integer
  end
end
