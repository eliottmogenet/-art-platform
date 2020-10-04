class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :customers, index: true
  end
end
