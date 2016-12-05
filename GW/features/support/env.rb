require 'rspec'
require 'capybara/cucumber'
require 'cucumber'
require 'pry'

Capybara.default_max_wait_time  = 10

Capybara.register_driver :selenium_chrome  do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome

Capybara.javascript_driver = :chrome
window = Capybara.current_session.driver.browser.manage.window
window.resize_to(1260, 800)
