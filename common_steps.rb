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

And(/^I navigate to the (.*) page$/) do |page|
  case page
  when 'home'
    Common.access_page(Config.page[:domain])
  when 'contact'
    Common.access_page("#{Config.page[:domain]}/#{Config.page[:contact]}")
  when 'workplace'
    Common.access_page("#{Config.page[:domain]}/#{Config.page[:workplace]}")
  end
end

Then(/^I see the correct (.*) page content$/) do |content|
  puts "Pending #{content} magic"
  Common.check_element(content)
end

After do
  # puts "DEBUG::LOG::Base64 Image: #{WebDriver.browser.screenshot.base64}"
  WebDriver.close
end
