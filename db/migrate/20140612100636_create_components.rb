class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :type
      t.string :size
      t.string :remarks

      t.timestamps
    end
  end
end
