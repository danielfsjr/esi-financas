class Transacao < ApplicationRecord
  validates :valor, presence: {message: "É obrigatório informar o valor!"}
  validates :descricao, presence: {message: "É obrigatório informar a descrição!"}
end
