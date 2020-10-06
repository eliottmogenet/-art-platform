class AddAllForeignKeyMissing < ActiveRecord::Migration[6.0]
  def change
    add_reference :tour_paintings, :tour, index: true
    add_reference :tour_paintings, :painting, index: true
    add_reference :ratings, :tour, index: true
    add_reference :ratings, :customer, index: true
  end
end
