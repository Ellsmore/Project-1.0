class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :accepted
      t.string :short_list
      t.string :description

      t.timestamps null: false
    end
  end
end
