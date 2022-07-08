# frozen_string_literal: true

require 'capybara/dsl'

class LoginPage
  include Capybara::DSL
  def clicar_sign_in_lnk
    find('a[title="Log in to your customer account"]').click
  end

  def inserir_credenciais(email, senha)
    find('#email').set email
    find('#passwd').set senha
  end

  def clicar_sign_in_btn
    click_button 'Sign in'
  end

  def exibir_msg_my_account
    find('.page-heading').text
  end

  def exibir_msg_error
    find('ol > li').text
  end
end
