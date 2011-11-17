class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :color
      t.integer :brand_id
      t.string :category

      t.timestamps
    end
  end
end
