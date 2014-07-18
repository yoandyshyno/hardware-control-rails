class CreateOsDistros < ActiveRecord::Migration
  def change
    create_table :os_distros do |t|
      t.string :codename
      t.string :version
      t.date :support_expiration_date
      t.string :remarks

      t.timestamps
    end
  end
end
