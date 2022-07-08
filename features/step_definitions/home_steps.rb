# frozen_string_literal: true

  Dado('que eu visito o site {string}') do |nome_site|
    @home_page.acessar_pagina(nome_site)
  end

  Quando('a página for carregada') do
    @home_page.titulo_pagina
  end

  Então('verei o preço do vestido longo amarelo') do
    expect(page).to have_content '$28.98'
  end
 