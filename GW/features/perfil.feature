#language:pt

Funcionalidade: Alterar dados cadastrais do perfil no GW

Como usuario do Geração W
Eu quero alterar meu telefone e adicionar uma breve descrição minha
Para que meus amigos possam visualizar 

@alterar_telefone
Cenario:Alterar Telefone de Contato e adicionar uma descrição
Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até o avatar
E clico na foto
E clico no botão editar
Quando digito o novo numero de telefone e uma descrição minha
E clico no botão salvar
Então meus dados são alterados 