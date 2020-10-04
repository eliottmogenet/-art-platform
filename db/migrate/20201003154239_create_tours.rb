class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :date
      t.string :languages
      t.integer :total_rate
      t.references :guides, null: false, foreign_key: true
      t.boolean :free

      t.timestamps
    end
  end
end
