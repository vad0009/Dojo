Dado(/^vou até o avatar$/) do
  find(:css, 'body > div.page > header > div.user.open-dropdown > a').hover
  sleep 1
end

Dado(/^clico na foto$/) do
  find(:css,'body > div.page > header > div.user.open-dropdown > div > a').click
  sleep 1
end

Dado(/^clico no botão editar$/) do
  find(:css, 'body > div.page > div.perfil-content.cl > section > div.block-title > a').click
  sleep 2
end

Quando(/^digito o novo numero de telefone e uma descrição minha$/) do
  fill_in('phoneNumber', with: "(11) 0000-0000")
  fill_in('aboutMe', with: "I'm a young apprentice")
  sleep 2
end

Quando(/^clico no botão salvar$/) do
  click_button('save-data')
end

Então(/^meus dados são alterados$/) do
  page.has_css?('body > div.page > div.perfil-content.cl > section > div:nth-child(10) > p.value')
  sleep 2
end
