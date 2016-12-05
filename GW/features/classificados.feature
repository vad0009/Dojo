# language: pt


Funcionalidade: Anunciar um produto no Geração W

Como usuário do Geração W
Para vender um celular
Eu quero anuncia-lo no Geração W

@classificados
Cenário: Criar um novo anuncio

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção classificados
E clico no botão “Criar novo anúncio”
Quando preencho os dados do formulário
E clico no botão “Adicionar novo anuncio” 
Então o anuncio é criado
