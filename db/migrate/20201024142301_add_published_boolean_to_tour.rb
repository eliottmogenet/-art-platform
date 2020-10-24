class AddPublishedBooleanToTour < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :published, :boolean, default: false
  end
end
