#language :pt

Funcionalidade: Escrever uma mensagem no mural

Como usuário do Geração W
Eu quero adicionar uma mensagem no mural
Para informar os associados sobre o Natal Solidário
@mensagem
Cenário: Adicionar uma mensagem

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção mural
E digito o titulo “Natal Solidário”
E digito a minha mensagem “Doe um presente para uma criança carente”
Quando clico no botão “criar tópico”
Então a mensagem é adicionada no mural

@mensagem_sem_conteudo
Cenario: Adicionar uma mensagem sem preencher a descrição
Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção mural
E digito o titulo “Natal Solidário”
Quando clico no botão “criar tópico”
Então campo deve ser validado