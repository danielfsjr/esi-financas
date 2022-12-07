Quando('eu clicar em Sair') do
  click_on 'Sair'
end

Então('devo ser redirecionado para tela de login') do
  expect(page).to have_content("Fazer Login")
  expect(page).to have_content("Senha")
end
