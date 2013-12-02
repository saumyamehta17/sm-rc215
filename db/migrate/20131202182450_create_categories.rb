class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
    add_index :categories, :product_id
  end
end
