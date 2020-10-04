class CreateTourPaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :tour_paintings do |t|
      t.references :tours, null: false, foreign_key: true
      t.references :paintings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
