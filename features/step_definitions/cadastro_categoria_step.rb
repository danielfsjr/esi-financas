Dado('que estou na página de cadastro de categoria') do
  visit '/categories/new'
end

Então('ele deve salvar a categoria') do
  category = Category.order('id').last
  expect(category.name).to eq('Contas')
end

Então('deverei ser redirecionado para tela de categorias') do
  expect(page).to have_current_path('/categories')
end
