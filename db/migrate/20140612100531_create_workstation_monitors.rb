class CreateWorkstationMonitors < ActiveRecord::Migration
  def change
    create_table :workstation_monitors do |t|
      t.string :brand
      t.integer :size
      t.integer :resolution_width
      t.integer :resolution_hight
      t.text :remarks

      t.timestamps
    end
  end
end
