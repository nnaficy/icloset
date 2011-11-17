class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :name
      t.string :color
      t.string :size
      t.integer :brand_id
      t.string :category

      t.timestamps
    end
  end
end
