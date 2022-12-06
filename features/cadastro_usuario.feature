#language: pt

Funcionalidade: Cadastrar usuário
Como visitante
Para que eu possa criar um acesso
Eu quero acessar a tela de cadastro
E realizar meu cadastro

Cenário: Cadastro de usuário com sucesso
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
Quando preencho o campo "Email" com "daniel.ferreira@usp.br"
Quando preencho o campo "Senha" com "password123"
Quando preencho o campo "Confirmar senha" com "password123"
E clico em salvar
Então ele deve ter sido salvo no banco de dados
E deverei ser redirecionado para tela de login

Cenário: Cadastro de usuário com erro - senhas divergentes
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
Quando preencho o campo "Email" com "daniel.ferreira@usp.br"
Quando preencho o campo "Senha" com "password123"
Quando preencho o campo "Confirmar senha" com "password321"
E clico em salvar
Então deverei ver a mensagem de erro "Senhas divergentes!"

Cenário: Cadastro de usuário com erro - sem senha
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
Quando preencho o campo "Email" com "daniel.ferreira@usp.br"
Quando preencho o campo "Confirmar senha" com "password321"
E deixo o campo "Senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Cenário: Cadastro de usuário com erro - sem confirmar senha
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
Quando preencho o campo "Email" com "daniel.ferreira@usp.br"
Quando preencho o campo "Senha" com "password321"
E deixo o campo "Confirmar senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório confirmar a senha!"

Cenário: Cadastro de usuário com erro - sem nome
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Email" com "daniel.ferreira@usp.br"
E deixo o campo "Nome" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Cadastro de usuário com erro - sem e-mail
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
E deixo o campo "Email" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Cenário: Cadastro de usuário com erro - e-mail inválido
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Daniel Ferreira"
E preencho o campo "Email" com "daniel@@@@.com"
E clico em salvar
Então deverei ver a mensagem de erro "Formato de e-mail inválido!"