class ModifyDateTypeToDatetimeForTourModel < ActiveRecord::Migration[6.0]
  def change
    remove_column :tours, :date
  end
end
