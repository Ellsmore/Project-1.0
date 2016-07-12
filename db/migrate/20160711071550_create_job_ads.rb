class CreateJobAds < ActiveRecord::Migration
  def change
    create_table :job_ads do |t|
      # --- Job Details --- #
      t.string :title
      t.text :description
      t.string :employment_type
      t.string :address
      t.string :suburb
      t.string :state
      t.integer :postcode

      # --- Job requirements --- #
      t.string :skills
      t.string :liscenses_certificates
      t.string :drivers_license
      t.string :transport

      t.timestamps null: false
    end
  end
end
