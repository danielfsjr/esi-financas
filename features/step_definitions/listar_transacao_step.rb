Dado('que eu esteja logado') do
  cookies[:stub_user_id] = 1
  visit '/'
end

Quando('eu estiver na página de listagem de transações') do
  visit '/transacoes'
end

Então('deverei ver minhas transações') do
  expect(page).to have_content("Descrição")
  expect(page).to have_content("Valor")
end
