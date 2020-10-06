class RemoveAllErrorForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_column :tour_paintings, :tours_id
    remove_column :tour_paintings, :paintings_id
    remove_column :ratings, :tours_id
    remove_column :ratings, :customers_id
  end
end
