class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :ware
      t.string :amount

      t.references :mycla, foreign_key: true

      t.timestamps
    end
  end
end
