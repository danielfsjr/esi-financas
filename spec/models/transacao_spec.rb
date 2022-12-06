require 'rails_helper'

RSpec.describe Transacao, type: :model do
  it 'invalido sem descricao' do
    transacao = Transacao.new
    transacao.valor = 100
    expect(transacao).not_to be_valid
  end

  it 'invalido sem valor' do
    transacao = Transacao.new
    transacao.descricao = "Salário"
    expect(transacao).not_to be_valid
  end
end
