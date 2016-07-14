class ChangeColumnAcceptedToBoolean < ActiveRecord::Migration
  def change
    remove_column :applications, :accepted, :string
    add_column :applications, :accepted, :boolean, :default => false
  end
end
