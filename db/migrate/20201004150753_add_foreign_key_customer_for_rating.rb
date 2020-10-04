class AddForeignKeyCustomerForRating < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :customers_id
  end
end
