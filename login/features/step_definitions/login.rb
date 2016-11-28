Dado(/^que eu esteja no site do Walmart$/) do
  visit('https://stg.webstore.waldev.com.br/')
end

Dado(/^clico no botão Entre$/) do
  click_link('topbar-login-link')
end

Dado(/^preencho os dados do formulario$/) do
	within_frame('iframeLogin') do
	  	fill_in('signinField', with: "jovem_aprendiz@hotmail.com")
	  	fill_in('password', with: "Walmart10")
	end
end

Quando(/^clico no botão Entrar$/) do
	within_frame('iframeLogin')do
  		click_button('signinButtonSend')
	end
end

Então(/^usuario conectado$/) do
  find(:css, "div.profile")
end

Dado(/^preencho os dados do formulario errado$/) do
  within_frame('iframeLogin') do
	  	fill_in('signinField', with: "jovem_aprendiz@hotmail.com")
	  	fill_in('password', with: "Waumart10")
	end
end

Então(/^login e\/ou senha invalidos$/) do
  within_frame('iframeLogin') do
  	find(:id, "alert-signin-error")
  end
end