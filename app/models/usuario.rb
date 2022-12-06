# Usuário
class Usuario < ApplicationRecord
  validates :nome, presence: {message: "É obrigatório informar o nome!"}
  validates :email, presence: {message: "É obrigatório informar o email!"},
                    format: {
                      with: URI::MailTo::EMAIL_REGEXP,
                      message: "Formato de e-mail inválido!"
                    }
  validates :senha, confirmation: {message: "Senhas divergentes!"}, presence: {message: "É obrigatório informar a senha!"}
  validates :senha_confirmation, presence: {message: "É obrigatório confirmar a senha!"}

  def self.authenticate(email, password)
    user = find_by_email(email)
    return false if user.nil?

    user if user.senha == password
  end
end
