# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.app_host = 'http://automationpractice.com/'
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end
