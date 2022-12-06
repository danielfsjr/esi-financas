class Category < ApplicationRecord
  validates :name, presence: {message: "É obrigatório informar o nome."}
end
