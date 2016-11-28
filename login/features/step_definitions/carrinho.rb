Dado(/^que eu esteja logado$/) do
  visit('https://stg.webstore.waldev.com.br/')
end

Dado(/^vou atá a opção informática$/) do
  page.find(:css, '#site-menu > ul > li:nth-child(4) > a').hover
  sleep 2
end

Dado(/^clico em notebooks$/) do
	find(:css, '#site-menu > ul > li:nth-child(4) > div > div > ul > li:nth-child(1)').click
	sleep 2
end

Dado(/^seleciono um notebook$/) do
  page.find(:css, '#hl_1 > div:nth-child(1) > div > a > div.hl-image-container > img').click
end

Dado(/^escolho a quantidade que eu quero comprar daquele produto$/) do
  page.find(:css, 'div.product-quantity-range')
end

Quando(/^clico em adicionar ao carrinho$/) do
  page.find(:css, '#buybox-Walmart > div.content.content-Walmart > div > div.buy-button-wrapper > button').click
  sleep 2
end

Quando(/^seleciono a opção de seguro que desejo$/) do
 find(:css, 'body > div.mfp-wrap.mfp-close-btn-in.mfp-auto-cursor.mfp-ready > div > div.mfp-content > div > div > form')
end

Quando(/^clico em continuar$/) do
  find(:id, 'navegaCarrinho').click
  sleep 2
end

Então(/^produto adicionado no carrinho$/) do
  find(:css, '#site-topbar > div.wraper-right-icons > div.cart > a > span.number').hover
  sleep 2
  find(:id, 'wm-cart').click
end

Dado(/^que eu esteja no carrinho de compras$/) do
	visit('https://www2.walmart.com.br/checkout/content/carrinho/')	
  find(:css, '#main > div > section')
end

Dado(/^já tenha um produto no carrinho$/) do
  find(:css, '#main > div > section > div > div.page-title.clearfix > h2 > span')
  sleep 2
end

Quando(/^clico no botão de adição$/) do
  find(:css, '#main > div > section > div > article > ul > li > div > div.my-cart-product-item.my-cart-product-quantity > span.ui-spinner.ui-widget.ui-widget-content.ui-corner-all > a.ui-spinner-button.ui-spinner-up.ui-corner-tr.ui-button.ui-widget.ui-state-default.ui-button-text-only').click
end

Então(/^o valor total é alterado$/) do
  find(:css, '#main > div > section > div > article > footer > section.visible-desktop.my-cart-footer-wrapper.clearfix > article.my-cart-totals > div.my-cart-totals-item.my-cart-total > span.my-cart-total-item.my-cart-total-text')
  sleep 2
end