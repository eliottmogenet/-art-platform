class RemoveTourForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :tours, :guides
  end

  def change
    add_reference :tours, :guide, index: true
  end
end
