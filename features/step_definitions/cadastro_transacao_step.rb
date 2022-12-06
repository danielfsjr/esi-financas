Dado('que estou na página de cadastro de transação') do
  visit '/transacoes/new'
end

Então('ele deve ter sido salvo nas transações') do
  transacao = Transacao.order('id').last
  expect(transacao.descricao).to eq('Salário')
  expect(transacao.valor).to eq(100)
end

Então('deverei ser redirecionado para tela de transações') do
  expect(page).to have_current_path('/transacoes')
end
