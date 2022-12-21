Quando('eu estiver na página de detalhe de categoria') do
  @categoria = Category.new({name: "Teste", user_id: 1})
  @categoria.save
  visit '/categories/1'
end

Então('deverei ver os detalhes da categoria') do
  expect(page).to have_content("Teste")
  expect(page).to have_content("Nome")
end
