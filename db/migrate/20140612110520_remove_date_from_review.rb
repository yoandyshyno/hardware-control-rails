class RemoveDateFromReview < ActiveRecord::Migration
  def change
    remove_column :reviews, :date, :date
  end
end
