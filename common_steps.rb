require 'bundler/setup'
Bundler.require(:default)

Before do
    if Config.page.nil?
        Config.setup_page('end_points')
    end
end

Given /^I open a new (.*) browser window$/ do |browser|
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

And /^I navigate to the (.*) page$/ do |page|
    case page
    when 'Home'
        Common.access_page(Config.page[:home_url])
    when 'Contact'
        Common.access_page(Config.page[:contact_page])
    when 'Workplace'
        Common.access_page(Config.page[:workplace_page])
    end
end

When /^I click the (.*) button$/ do |button|
    puts button
    case button
    when 'search'
        pending
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

Then /^I see the (.*) element$/ do |element|
    puts element
    case element
    when 'search'
        pending
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

Then /^I see the correct (.*)$/ do |expect|
    puts expect
    case expect
    when 'page'
        pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    when 'results'
        pending
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
end

After do
    WebDriver.close  
end
