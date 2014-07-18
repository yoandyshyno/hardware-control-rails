class CreateGraphicCards < ActiveRecord::Migration
  def change
    create_table :graphic_cards do |t|
      t.string :model
      t.string :manufacturer
      t.boolean :compatible3d
      t.string :remarks

      t.timestamps
    end
  end
end
