# language: pt

Funcionalidade: Realizar uma pesquisa no Geração W

Como usuário do Geração W
Para fazer uma pesquisa sobre a Black Friday
Eu quero encontrar todas as informações através da barra de busca
@pesquisa
Cenário: Pesquisar sobre a Black Friday

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
Quando digito “Black Friday” na barra de busca
E clico no botão Pesquisar
Então deve aparecer todos os resultados da pesquisa

@pesquisa_sem_resultado
Cenário: Pesquisar sobre o Ano Novo

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
Quando digito “Ano Novo” na barra de busca
E clico no botão Pesquisar
Então deve aparecer todos os resultados da pesquisa