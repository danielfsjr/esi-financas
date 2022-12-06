require 'rails_helper'
require 'spec_helper'

RSpec.describe Usuario, type: :model do
  it 'invalido sem nome' do
    usuario = Usuario.new
    usuario.email = "teste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido com email com formato invalido' do
    usuario = Usuario.new
    usuario.nome = "joao"
    usuario.email = "a,@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido com senhas divergentes' do
    usuario = Usuario.new
    usuario.nome = "joao"
    usuario.email = "daniel@gmail.com"
    usuario.senha = "password123"
    usuario.senha_confirmation = "password321"
    expect(usuario).not_to be_valid
  end
end
