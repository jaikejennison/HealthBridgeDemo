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
        Common.access_page(Config.page[:home_uri])
    when 'Join The Team'
        Common.access_page(Config.page[:join_the_team_uri])
    when 'Leadership'
        Common.access_page(Config.page[:leadership_uri])
    end
end

When /^I check the (.*) elements?$/ do |element|
    @search = false
    @category_filter = false
    @job_type_filter = false
    @location_filter = false
    @search_and_filter = false
    case element
    when 'search'
        Common.access_form('QA', nil, nil)
        @search = true
    when 'category filter'
        Common.access_form(nil, 'category', 'quality')
        @category_filter = true
    when 'job type filter'
        Common.access_form(nil, 'jobtype', 'quality')
        @job_type_filter = true
    when 'location filter'
        Common.access_form(nil, 'location', 'traverse-city-mi')
        @location_filter = true
    when 'search and filter'
        Common.access_form('Engineer', nil, nil)
        Common.access_form(nil, 'category', 'quality')
        Common.access_form(nil, 'jobtype', 'quality')
        Common.access_form(nil, 'location', 'traverse-city-mi')
        @search_and_filter = true
    end
end

Then /^I see the correct filtered list$/ do
    if @search == true
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
    if @category_filter == true
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
    if @job_type_filter == true
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
    if @location_filter == true
        #code
        # result = WebDriver something
        # expect(result).to be true
        # expect(result).to be result
    end
end

When /^I click the read more button$/ do
    Common.access_form('Engineer', nil, nil)
    Common.access_form(nil, 'category', 'quality')
    Common.access_form(nil, 'jobtype', 'quality')
    Common.access_form(nil, 'location', 'traverse-city-mi')
    @title = WebDriver.browser.span(:class, 'job-title').text
    Common.read_more
end

Then /^I am directed to the correct new page$/ do
    #code
    puts @title
    # result = WebDriver something
    # expect(result).to be true
    # expect(result).to be result
end

After do
    WebDriver.close  
end
