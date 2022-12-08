# AddCategoryIdToTransacaos
class AddCategoryIdToTransacaos < ActiveRecord::Migration[7.0]
  def change
    add_column :transacaos, :category_id, :integer
    add_index :transacaos, :category_id
  end
end
