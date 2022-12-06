# migration for create transacoes
class CreateTransacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :transacaos do |t|
      t.decimal :valor
      t.string :descricao
      t.string :userId
      t.timestamps
    end
  end
end
