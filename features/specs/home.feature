#language: pt

@abrir_site
Funcionalidade: Abrir o site
    Para realizar uma compra online
    Sendo um cliente da loja Automation Pratice
    Posso acessar seu site

    @abrir_navegador_sucesso
    Cenário: Abrir navegador com sucesso
        Dado que eu visito o site "http://automationpractice.com/"
        Quando a página for carregada
        Então verei o preço do vestido longo amarelo

