#language: pt

Funcionalidade: Cadastrar Categoria
Como usuário
Para que eu possa criar uma categoria
Eu quero acessar a tela de cadastro de categoria
E realizar cadastro dela

Cenário: Cadastro de categoria com sucesso
Dado que eu esteja logado
E que estou na página de cadastro de categoria
Quando preencho o campo "Nome" com "Contas"
E clico em salvar
Então ele deve salvar a categoria
E deverei ser redirecionado para tela de categorias