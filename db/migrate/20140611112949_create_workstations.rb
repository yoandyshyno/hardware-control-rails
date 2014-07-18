class CreateWorkstations < ActiveRecord::Migration
  def change
    create_table :workstations do |t|
      t.string :name
      t.string :user
      t.string :ip
      t.string :mac

      t.timestamps
    end
  end
end
