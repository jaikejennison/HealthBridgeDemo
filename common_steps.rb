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
  domain = Config.page[:domain]
  contact = Config.page[:contact]
  workplace = Config.page[:workplace]
  puts "DEBUG::\n\tdomain:#{domain}\n\tcontact:#{contact}\n\tworkplace:#{workplace}"
  case page
  when 'home'
    Common.access_page(domain)
  when 'contact'
    Common.access_page("#{domain}/#{contact}")
  when 'workplace'
    Common.access_page("#{domain}/#{workplace}")
  end
end

When(/^I click the (.*) element$/) do |element|
  case element
  when 'search'
    Common.click_element('span', 'class', element)
  when 'some button'
    pending
  end
end

When(/^I search for (.*)$/) do |keyword|
  case keyword
  when 'help'
    Common.access_form(nil, 'term', keyword, nil, 'search')
  when 'slack'
    pending
  end
end

Then(/^I see the (.*) element$/) do |element|
  case element
  when 'search'
    puts 'Pending Magic'
  when 'some button'
    pending
  end
end



Then(/^I see the correct (.*)$/) do |expect|
  puts "Pending #{expect} magic"
  case expect
  when 'page'
    # result = WebDriver something
    # expect(result).to be true
    # expect(result).to be result
  when 'results'
    # result = WebDriver something
    # expect(result).to be true
    # expect(result).to be result
  end
end

After do
  WebDriver.close
end
