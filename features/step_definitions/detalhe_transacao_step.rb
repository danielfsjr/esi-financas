Quando('eu estiver na página de detalhe de transação') do
  visit '/transacoes/1'
end

Então('deverei ver os detalhes da transação') do
  expect(page).to have_content("Descrição")
  expect(page).to have_content("Valor")
end
