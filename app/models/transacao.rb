class Transacao < ApplicationRecord
  belongs_to :category, optional: true

  validates :valor, presence: {message: "É obrigatório informar o valor!"}
  validates :descricao, presence: {message: "É obrigatório informar a descrição!"}
end
