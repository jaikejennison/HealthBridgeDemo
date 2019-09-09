require 'watir'

# This class defines a custom web driver.
class WebDriver

  def self.init(browser, prefs = nil)
    @read_timeouts = 0
    begin
      if ENV['HEADLESS']
        @headless = Headless.new
        @headless.start
      end
      if prefs
        @browser = Watir::Browser.new browser, :prefs => prefs
      elsif browser == :firefox
        profile = Selenium::WebDriver::Firefox::Profile.from_name 'automation'
        @browser = Watir::Browser.new(:firefox, :profile => profile)
      else
        @browser = Watir::Browser.new browser
        @browser.window.wait_until_present
        @browser.window.maximize
        capabilities = @browser.driver.capabilities
        @browser_version = capabilities.version
        puts "Using Browser: #{capabilities.browser_name.capitalize} v#{@browser_version}"
      end
    rescue Net::ReadTimeout
      puts 'Detected Net::ReadTimeout Error, Restarting Browser Session'
      WebDriver.close
      sleep 5
      @read_timeouts += 1
      retry unless @read_timeouts > 2
      abort('Maximum Number of Net::ReadTimeout Errors Detected, Aborting')
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
    end
    if defined? @browser
      @browser.close
    end
  end

end
