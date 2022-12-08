class Transacao < ApplicationRecord
  belongs_to :category

  validates :valor, presence: {message: "É obrigatório informar o valor!"}
  validates :descricao, presence: {message: "É obrigatório informar a descrição!"}
end
