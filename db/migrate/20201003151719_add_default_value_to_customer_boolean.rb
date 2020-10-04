class AddDefaultValueToCustomerBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :paid, :boolean, default: false
  end
end
