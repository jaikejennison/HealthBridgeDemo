require 'bundler/setup'
Bundler.require(:default)

When /^I open a new browser window$/ do
    WebDriver.init(:chrome)
end
