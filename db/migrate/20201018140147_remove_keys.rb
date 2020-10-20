class RemoveKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :tours, :guide_id
    remove_column :ratings, :customer_id
  end
end
