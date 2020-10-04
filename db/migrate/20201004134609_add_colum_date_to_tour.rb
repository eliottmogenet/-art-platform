class AddColumDateToTour < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :date, :datetime
  end
end
