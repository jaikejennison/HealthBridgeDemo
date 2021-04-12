# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

Before do
  Config.setup_page('config') if Config.page.nil?
end

Given(/^I open a new (.*) browser window$/) do |browser|
  case browser
  when 'chrome'
    WebDriver.init(:chrome)
  when 'firefox'
    WebDriver.init(:firefox)
  else
    puts "Unknown Browser #{browser}. Defaulting to Chrome"
    WebDriver.init(:chrome)
  end
end

When(/^I navigate to the (.*) page$/) do |page|
  case page
  when 'home'
    Common.access_page(Config.page[:domain])
    puts "DEBUG::LOG::Common.access_page\n\tURL: #{WebDriver.browser.url}"
  when 'contact'
    Common.access_page("#{Config.page[:domain]}/#{Config.page[:contact]}")
    puts "DEBUG::LOG::Common.access_page\n\tURL: #{WebDriver.browser.url}"
  when 'workplace'
    Common.access_page("#{Config.page[:domain]}/#{Config.page[:workplace]}")
    puts "DEBUG::LOG::Common.access_page\n\tURL: #{WebDriver.browser.url}"
  end
end

Then(/^I see the correct (.*) page content$/) do |content|
  case content
  when 'home'
    Common.check_home
    puts 'This is where we would use a tool like RSPEC'
  when 'contact'
    Common.check_contact
    puts 'This is where we would use a tool like RSPEC'
  when 'workplace'
    Common.check_workplace
    puts 'This is where we would use a tool like RSPEC'
  end
end

After do
  # puts "DEBUG::LOG::Base64 Image: #{WebDriver.browser.screenshot.base64}"
  WebDriver.close
end
