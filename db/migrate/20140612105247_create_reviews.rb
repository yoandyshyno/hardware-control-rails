class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.date :date
      t.belongs_to :workstation, index: true
      t.string :monitor1
      t.string :monitor2
      t.string :monitor3
      t.text :hardware
      t.belongs_to :graphic_card, index: true
      t.belongs_to :os_distro, index: true
      t.string :remarks

      t.timestamps
    end
  end
end
