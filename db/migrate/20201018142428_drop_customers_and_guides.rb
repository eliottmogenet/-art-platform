class DropCustomersAndGuides < ActiveRecord::Migration[6.0]
  def change
    drop_table :customers
    drop_table :guides
  end
end
