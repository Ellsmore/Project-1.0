class AddClientIdToJobs < ActiveRecord::Migration
  def change
    add_column :job_ads, :client_id, :integer
  end
end
