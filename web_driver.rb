# frozen_string_literal: true

require 'headless'
require 'watir'

# This class defines a custom web driver.
class WebDriver
  def self.init(browser)
    @read_timeouts = 0
    begin
      if ENV['HEADLESS']
        @headless = Headless.new
        @headless.start
      end
      @browser = Watir::Browser.new browser
      capabilities = @browser.driver.capabilities
      @browser_version = capabilities.version
      puts "Browser: #{capabilities.browser_name.capitalize} v.#{@browser_version}"
    rescue StandardError => e
      puts "ERROR::StandardError::WebDriver.init\n#{e}\nRestarting browser..."
      WebDriver.close
      sleep 5
      @read_timeouts += 1
      retry unless @read_timeouts > 2
      abort("ABRT::StandardError::WebDriver.init\n#{e}.\n\tMaximum retry limit reached... Aborting.")
    end
  end

  def self.browser
    @browser
  end

  def self.version
    @browser_version
  end

  def self.close
    if defined? @headless
      @headless.destroy
    else
      @browser.close
    end
  end
end
