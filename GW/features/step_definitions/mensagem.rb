Dado(/^vou até a aba menu$/) do
  page.find(:css, 'body > div.page > header > div.menu').hover
  sleep 1
end

Dado(/^escolho a opção mural$/) do
  page.find(:css, 'body > div.page > header > div.menu > div > nav > ul > li.mural-item').click
end

Dado(/^digito o titulo “Natal Solidário”$/) do
  fill_in('desTitle', with: "Natal Solidário - Teste")
  sleep 1
end

Dado(/^digito a minha mensagem “Doe um presente para uma criança carente”$/) do
  fill_in('desComment', with: "Doe um presente para uma criança carente")
  sleep 1
end

Quando(/^clico no botão “criar tópico”$/) do
  click_button('post')
end

Então(/^a mensagem é adicionada no mural$/) do
  page.find(:css, '#post > div')
  sleep 2
end

Então(/^campo deve ser validado$/) do
  page.has_css?( '#comment-form > span.alt-field-comment.alt-field-error')
  sleep 2
end