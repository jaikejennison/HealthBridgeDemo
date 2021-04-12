# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    puts "DEBUG::LOG::Common.access_page\n\tURL: #{WebDriver.browser.url}"
  end

  def self.click_element(tag, value)
    puts "DEBUG::LOG::Common.click_element\n\tURL: #{WebDriver.browser.url}"
    case tag
    when 'span'
      # click = WebDriver.browser.span(:class, value)
      WebDriver.browser.span(:class, value).click!
    when 'button'
      # click = WebDriver.browser.button(:class, value)
      WebDriver.browser.button(:class, value).click!
    end
    # return click.click if click.exists?
  end
end
