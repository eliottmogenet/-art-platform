class ChangeTourBooleanDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column :tours, :free, :boolean, default: false
  end
end
