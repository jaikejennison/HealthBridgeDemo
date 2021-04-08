# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    puts "DEBUG::LOG::Common.access_page\n\tURL: #{WebDriver.browser.url}"
  end

  def self.access_form(id, name, text, value, xpath)
    puts "DEBUG::LOG::Common.access_form\n\tURL: #{WebDriver.browser.url}"
    element = WebDriver.browser.div(:class, 'cell-wrapper').form(:xpath, "//*[contains(@action, #{xpath})]")
    # element = WebDriver.browser.div(:class, 'cell-wrapper').form(:action, xpath)
    # unless text.nil?
    #   input = element.text_field(type: 'search', name: name)
    #   input.set(text)
    # end
    element.select_list(:id, id).select(value) unless id.nil? && value.nil?
    element.submit
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
