class AddMyclaidToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :mycla_id, :integer
  end
end
