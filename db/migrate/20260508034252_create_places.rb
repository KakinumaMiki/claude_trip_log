class CreatePlaces < ActiveRecord::Migration[8.1]
  def change
    create_table :places do |t|
      t.references :prefecture, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
