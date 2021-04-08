# frozen_string_literal: true

require 'headless'
require 'watir'

# This class defines a custom web driver.
class WebDriver
  def self.init(browser)
    @read_timeouts = 0
    if ENV['HEADLESS']
      @headless = Headless.new
      @headless.start
    end
    @browser = Watir::Browser.new browser
    puts "#{@browser.driver.capabilities.browser_name.capitalize} v#{@browser.driver.capabilities.version}"
  end

  def self.browser
    attr_reader :browser
  end

  def self.close
    if defined? @headless
      @headless.destroy
    else
      @browser.close
    end
  end
end
