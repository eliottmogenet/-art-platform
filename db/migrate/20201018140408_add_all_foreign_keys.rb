class AddAllForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :user, index: true
    add_reference :tours, :user, index: true
  end
end
