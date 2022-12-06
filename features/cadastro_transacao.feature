#language: pt

Funcionalidade: Cadastrar transacao
Como usuário
Para que eu possa criar uma transação
Eu quero acessar a tela de cadastro de transação
E realizar cadastro dela

Cenário: Cadastro de transação com sucesso
Dado que eu esteja logado
E que estou na página de cadastro de transação
Quando preencho o campo "Descrição" com "Salário"
E preencho o campo "Valor" com "100"
E clico em salvar
Então ele deve ter sido salvo nas transações
E deverei ser redirecionado para tela de transações

Cenário: Cadastro de transação com erro - sem descrição
Dado que estou na página de cadastro de transação
Quando preencho o campo "Valor" com "100"
E deixo o campo "Descrição" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a descrição!"

Cenário: Cadastro de transação com erro - sem valor
Dado que estou na página de cadastro de transação
Quando preencho o campo "Descrição" com "Salário"
E deixo o campo "Valor" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o valor!"