Dado(/^escolho a opção classificados$/) do
  find(:css, 'body > div.page > header > div.menu > div > nav > ul > li.classified-item').click
end

Dado(/^clico no botão “Criar novo anúncio”$/) do
  page.find(:css, 'body > div.page > div.classifieds-content.cl > section > div.classifieds-gallery-images.cl > a').click
end

Quando(/^preencho os dados do formulário$/) do
	find('#form-add-classified > div.input-field.category > span:nth-child(2)').click
	fill_in('desTitle', with: 'Teste QA')
	fill_in('desContact', with: '(11) 94678-2013')

	binding.pry
	within_frame(find(:css,'#cke_2_contents > iframe')) do
		fill_in('body', with: 'Teste de QA')
	end
		
	sleep 2
end

Quando(/^clico no botão “Adicionar novo anuncio”$/) do
  find(:id, 'new-announcement').click
end

Então(/^o anuncio é criado$/) do
  page.has_css?('body > div.page > div.classifieds-content.cl > section > div.classifieds-gallery-images.cl > div:nth-child(2)')
  sleep 2
end