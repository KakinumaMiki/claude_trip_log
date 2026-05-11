class CreatePrefectures < ActiveRecord::Migration[8.1]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :name_en
      t.integer :code
      t.string :region

      t.timestamps
    end
  end
end
