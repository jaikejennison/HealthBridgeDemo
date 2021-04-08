require 'bundler/setup'
Bundler.require(:default)

Before do
    if Config.page.nil?
        Config.setup_page('config')
    end
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

When(/^I click the (.*) element$/) do |element|
    case element
    when 'search'
        Common.click_element('span', element)
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
        #pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    when 'some button'
        pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
end

And(/^I navigate to the (.*) page$/) do |page|
    case page
    when 'Home'
        Common.access_page(Config.page[:home_url])
    when 'Contact'
        Common.access_page(Config.page[:contact_page])
    when 'Workplace'
        Common.access_page(Config.page[:workplace_page])
    end
end

Then(/^I see the correct (.*)$/) do |expect|
    puts "Pending #{expect} magic"
    case expect
    when 'page'
        #pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    when 'results'
        #pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
end

After do
    WebDriver.close
end
