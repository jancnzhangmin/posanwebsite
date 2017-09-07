class CreateNewspapers < ActiveRecord::Migration[5.0]
  def change
    create_table :newspapers do |t|
      t.string :title
      t.text :content
      t.integer :top

      t.timestamps
    end
  end
end
