# frozen_string_literal: true

require 'capybara/dsl'

class HomePage
    include Capybara::DSL

    def titulo_pagina
        find('div > h1').text
    end

    def acessar_pagina(visitar)
        visit visitar
    end
end
