class RemoveKey < ActiveRecord::Migration[6.0]
  def change
    remove_column :tours, :guides_id
  end
end
