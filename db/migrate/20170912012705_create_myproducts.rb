class CreateMyproducts < ActiveRecord::Migration[5.0]
  def change
    create_table :myproducts do |t|
      t.integer :mycla_id
      t.string :name
      t.string :spec
      t.string :content
      t.float :price

      t.timestamps
    end
  end
end
