Dado(/^que eu esteja no site do Geração W$/) do
	visit('https://geracao.qa.vmcommerce.intra/')
end

Dado(/^preencho meus dados no formulario$/) do
  fill_in('username', with: "anoroes")
  fill_in('password', with: "123456789")
  sleep 1
end

Dado(/^clico no botão entrar$/) do
  click_button('send')
end

Dado(/^esteja logado com sucesso$/) do
  page.has_css?('body > div.page > header > div.user.open-dropdown > a')
end

Quando(/^digito “Black Friday” na barra de busca$/) do
  fill_in('search', with: "Black Friday")
  sleep 1
end

Quando(/^clico no botão Pesquisar$/) do
  click_button('send-search')
end

Então(/^deve aparecer todos os resultados da pesquisa$/) do
  page.has_css?('body > div.page > div.search-content.cl > div.search-data.wordBreakAll > div > h1 > span.search-count')
  sleep 2
end

Quando(/^digito “Ano Novo” na barra de busca$/) do
  fill_in('search', with: "Ano Novo")
  sleep 1
end