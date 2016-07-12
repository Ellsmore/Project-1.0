class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      # --- Account Details --- #
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email

      # --- About Me --- #
      t.integer :candidate_contact_number
      t.string :gender
      t.string :residency_status
      t.string :residental_address
      t.string :residental_suburb
      t.string :residental_state
      t.integer :residental_postcode
      t.string :postal_address
      t.string :postal_suburb
      t.string :postal_state
      t.integer :postal_postcode
      t.text :introduction
      t.string :education

      # --- Profession --- #
      t.string :profession
      t.string :skills
      t.string :other_skills #Might not need
      t.string :certificates_licenses

      # --- Employment History --- #
      t.string :job_title
      t.string :job_duration
      t.string :company_name
      t.text :job_description

      # --- References --- #
      t.string :reference_name
      t.integer :reference_contact_number

      # --- Documentation --- #
      t.binary :picture
      t.binary :resume
      t.binary :photo_id

      # --- Other --- #Consent to tests/che
      t.string :consent_to_tests
      t.string :travelling_distance
      t.string :vehicle_access
      t.string :availability
      t.string :used_marketing_channel
      t.string :used_agencies

      t.timestamps null: false
    end
  end
end
