Dado('que eu visito esse site {string}') do |nome_site|
  @home_page.acessar_pagina(nome_site)
end

Quando('eu inserir as credenciais de login {string} e senha {string}') do |email, passwrd|
  @login_page.clicar_sign_in_lnk
  @login_page.inserir_credenciais(email, passwrd)
  @login_page.clicar_sign_in_btn
  sleep 5
end

Então('eu poderei ver a mensagem {string}') do |mensagem|
  expect(@login_page.exibir_msg_my_account).to have_content mensagem
  page.save_screenshot('log/screenshots/login_sucesso.png')
end

Então('não consiguirei acessar minha conta e verei a mensagem {string}') do |mensagem|
  file = YAML.load_file(File.join(Dir.pwd, 'features/support/fixtures/mensagem.yaml')) #abre o arquivo .yaml da mensagem correspondente e presente no arquivo .feature 
  dados = file[mensagem]
  expect(@login_page.exibir_msg_error).to have_content dados['mensagem']
  page.save_screenshot('log/screenshots/' + mensagem + '.png')
end

# Então('não consiguirei acessar minha conta e verei a mensagem {string}') do |mensagem|
#   expect(@login_page.exibir_msg_error).to have_content mensagem
# end
# ______________________________

# Então('não consiguirei acessar minha conta e verei a mensagem "Authentication failed."') do
#   expect(@login_page.exibir_msg_error).to have_content 'Authentication failed.'
# end

# Então('não consiguirei acessar minha conta e verei a mensagem "An email address required."') do
#   expect(@login_page.exibir_msg_error).to have_content 'An email address required.'
# end

# Então('não consiguirei acessar minha conta e verei a mensagem "Password is required."') do
#   expect(@login_page.exibir_msg_error).to have_content 'Password is required.'
# end
