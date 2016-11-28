#language:pt

Funcionalidade: Verificar o valor final do carrinho

Como usuario do Walmart.com
Eu quero adicionar itens no carrinho de compras
Para ver o preço total dos produtos

@carrinho
Cenario:Adicionado um produto

Dado que eu esteja no site do Walmart
E vou atá a opção informática
E clico em notebooks
E seleciono um notebook
E escolho a quantidade que eu quero comprar daquele produto
Quando clico em adicionar ao carrinho
E seleciono a opção de seguro que desejo
E clico em continuar
Então produto adicionado no carrinho

@carrinho @incremento_carrinho

Cenario:Incrementando +1 produto ao carrinho e verificando se o valor final foi alterado

Dado que eu esteja no carrinho de compras
E já tenha um produto no carrinho
Quando clico no botão de adição
Então o valor total é alterado