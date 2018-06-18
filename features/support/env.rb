#Sobre em memoria as gems informadas
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
#require 'page-object'
#require 'data_magic'

#World(PageObject::PageFactory)

#Configurando o driver capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuracao do driver como padrao
Capybara.default_driver = :selenium

#Timeout padrao na execucao
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize