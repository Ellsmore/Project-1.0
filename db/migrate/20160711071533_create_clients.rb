class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      # --- Business Details --- #
      t.string :business_name
      t.string :address
      t.string :suburb
      t.string :state
      t.integer :postcode

      # --- Account & Contact Info --- #
      t.string :contact_name
      t.integer :mobile_number
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
