#language:pt

Funcionalidade: Agendar uma massagem

Como usuário do Geração W
Para receber uma massagem
Eu quero agendar um horário 

@massagem
Cenário: Agendar um horário 

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção massagem
Quando escolho uma data e horário disponível
E preencho o formulário 
E confirmo minha solicitação
Então reserva realizada com sucesso

@cancelar
Cenário: Cancelar Massagem

Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção massagem
Quando clico no botão cancelar
E depois clico no botão sim
Então minha massagem é cancelada

@massagem_sem_dados
Cenário: Agendar um horário sem os dados
Dado que eu esteja no site do Geração W
E preencho meus dados no formulario
E clico no botão entrar
E esteja logado com sucesso
E vou até a aba menu
E escolho a opção massagem
Quando escolho uma data e horário disponível
E confirmo minha solicitação
Então validar campos

