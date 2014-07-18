class RemoveSizeFromWorkstationMonitor < ActiveRecord::Migration
  def change
    remove_column :workstation_monitors, :size, :integer
  end
end
