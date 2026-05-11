class AddStatusToPlaces < ActiveRecord::Migration[8.1]
  def change
    add_column :places, :status, :integer
  end
end
