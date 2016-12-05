Dado(/^escolho a opção massagem$/) do
  page.find(:css,'body > div.page > header > div.menu > div > nav > ul > li.massage-item').click
  sleep 2
end

Quando(/^escolho uma data e horário disponível$/) do
  page.find(:css,'#reserve > tbody > tr:nth-child(1) > td:nth-child(4) > div > div.description.description-white').click
  sleep 2
end

Quando(/^preencho o formulário$/) do
  fill_in('userEmail', with: "ana.noroes@walmart.com")
  fill_in('userNumber', with: "1147")
  sleep 2
end

Quando(/^confirmo minha solicitação$/) do
	find(:css, '#form-reserve > div.input-field.footer > button').click
	sleep 1
end

Então(/^reserva realizada com sucesso$/) do
  	page.has_css?('#reserve > tbody > tr:nth-child(1) > td:nth-child(4) > div > div.description.description-red')
  	sleep 2
end


Quando(/^clico no botão cancelar$/) do
	find(:css, '#statusActions > i.fa.fa-trash').click
	sleep 2
end

Então(/^validar campos$/) do
  page.has_css?('#userEmail')
    sleep 2
end
Quando(/^depois clico no botão sim$/) do
  find(:css, 'body > div.lightboxes > div > div.lightbox.cancel-confirmation > div > div:nth-child(1) > button').click
end

Então(/^minha massagem é cancelada$/) do
	page.find(:css,'#reserve > tbody > tr:nth-child(1) > td:nth-child(4) > div > div.description.description-white')
    sleep 2
end