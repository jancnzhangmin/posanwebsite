class CreateMyclas < ActiveRecord::Migration[5.0]
  def change
    create_table :myclas do |t|
      t.string :cla

      t.timestamps
    end
  end
end
