class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :rate
      t.datetime :date
      t.references :tours, null: false, foreign_key: true
      t.references :guides, null: false, foreign_key: true

      t.timestamps
    end
  end
end
