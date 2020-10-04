class RemoveForeignKeyGuideForRatings < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :ratings, :guides
  end
end
