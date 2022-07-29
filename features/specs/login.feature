#language: pt

#taguear o cenário e as funcionalidades por último
# User Storie : para que realizar uma ação, sendo um/uma/o/a, posso (atingir objetivo) 
# Critérios de aceite que é quebrar os user storie em pequenos histórias a fim de atingir o objetivo principal da user storie

@tentativas_login
Funcionalidade: Tentativas de login
    Para que eu possa realizar uma compra
    Sendo um cliente cadastrado
    Posso fazer login no sistema

#Sempre comece pelo caminho feliz
    @login_sucedido
    Cenário: Login bem sucedido
        Dado que eu visito esse site "http://automationpractice.com/"
        Quando eu inserir as credenciais de login "abc@def.fg" e senha "12345"
        Então eu poderei ver a mensagem "MY ACCOUNT"

    #linhas 16, 17, 18, 23, 24 e 25 - passagem de parâmetros
    @tentativas_incorretas_de_login
    Esquema do Cenário: Tentativas incorretas de login
        Dado que eu visito o site "http://automationpractice.com/"
        Quando eu inserir as credenciais de login <login> e senha <senha>
        Então não consiguirei acessar minha conta e verei a mensagem <mensagem>
            Exemplos:
            | login              | senha       | mensagem              |
            | "incorreto@def.fg" | "12345"     | "login_incorreto"     |
            | "abc@def.fg"       | "incorreta" | "senha_incorreta"     |
            | ""                 | "12345"     | "login_vazio"         |
            | "abc@def.fg"       | ""          | "senha_vazia"         |
            | ""                 | ""          | "crendenciais_vazias" |
            | "abc@def.fg"       | "1234"      | "senha_invalida"      | 

            
    # @login_incorreto_senha_correta
    # Cenário: Login incorreto senha correta
    #     Dado que eu visito o site "http://automationpractice.com/"
    #     Quando eu inserir as credenciais de login "incorreto@def.fg" e senha "12345"
    #     Então não consiguirei acessar minha conta e verei a mensagem "Authentication failed."

    # @login_correto_senha_incorreta
    # Cenário: Login correto senha incorreta
    #     Dado que eu visito o site "http://automationpractice.com/"
    #     Quando eu inserir as credenciais de login "abc@def.fg" e senha "incorreta"
    #     Então não consiguirei acessar minha conta e verei a mensagem "Authentication failed."

    # @login_vazio_senha_correta
    # Cenário: Login vazio senha correta
    #     Dado que eu visito o site "http://automationpractice.com/"
    #     Quando eu inserir as credenciais de login "" e senha "12345"
    #     Então não consiguirei acessar minha conta e verei a mensagem "An email address required."

    # @login_correto_senha_vazia
    # Cenário: Login correto senha vazia
    #     Dado que eu visito o site "http://automationpractice.com/"
    #     Quando eu inserir as credenciais de login "abc@def.fg" e senha ""
    #     Então não consiguirei acessar minha conta e verei a mensagem "Password is required."
        
    # @credenciais_vazias
    # Cenário: Credenciais vazias
    #     Dado que eu visito o site "http://automationpractice.com/"
    #     Quando eu inserir as credenciais de login "" e senha ""
    #     Então não consiguirei acessar minha conta e verei a mensagem "An email address required."