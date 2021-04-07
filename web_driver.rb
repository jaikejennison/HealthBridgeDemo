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
      if browser == :firefox
        @browser = Watir::Browser.new browser
      else
        @browser = Watir::Browser.new browser
        @browser.window.wait_until_present
        @browser.window.maximize
        capabilities = @browser.driver.capabilities
        @browser_version = capabilities.version
        puts "Using Browser: #{capabilities.browser_name.capitalize} v#{@browser_version}"
      end
    rescue StandardError => e
      puts "Warn::#{e}. Restarting browser."
      WebDriver.close
      sleep 5
      @read_timeouts += 1
      retry unless @read_timeouts > 2
      abort("ERROR::#{e}. Maximum retry limit reached. Aborting.")
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
      puts "DEBUG::@headless.distroy"
      @headless.destroy
    else
      puts "DEBUG::@browser.close"
      @browser.close
    end
    #if defined? @browser
    #  @browser.close
    #end
  end

end
