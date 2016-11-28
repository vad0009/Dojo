#language:pt
Funcionalidade: Cenário de Login com Sucesso e Falhar

Como usuario do Walmart.com
Eu quero entrar com meu usuario
Para fazer uma compra

@success
Cenario: Realizar login no site do Walmart

Dado que eu esteja no site do Walmart
E clico no botão Entre
E preencho os dados do formulario
Quando clico no botão Entrar
Então usuario conectado 

@failure
Cenario: Realizar login no site do Walmart com login e/ou senha errado
Dado que eu esteja no site do Walmart
E clico no botão Entre
E preencho os dados do formulario errado
Quando clico no botão Entrar
Então login e/ou senha invalidos