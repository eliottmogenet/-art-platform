class ChangeGuideToCustomerForeignKeyRating < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :guides_id, :customers_id
  end
end
