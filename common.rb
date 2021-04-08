# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    puts "DEBUG::\n\tCurrent URL: #{WebDriver.browser.url}\n\tHTML Dump: #{WebDriver.browser.html}"
  end

  def self.access_form(id, name, text, value, xpath)
    begin
      puts "DEBUG::\n\tCurrent URL: #{WebDriver.browser.url}\n\tHTML Dump: #{WebDriver.browser.html}"
      # filters_form = WebDriver.browser.form(:xpath, "//form[starts-with(@action, #{xpath})]")
      filters_form = WebDriver.browser.div(:class, 'cell-wrapper').form(:action, xpath)
      # unless text.nil?
      #   text_field = filters_form.text_field(:name, name)
      #   text_field.set(text)
      # end
      # filters_form.select_list(:id, id).select(value) unless id.nil? && value.nil?
      filters_form.submit
    rescue StandardError => e
      puts "\tERROR::#{e}"
    end
  end

  def self.click_element(tag, value)
    puts "DEBUG::\n\tCurrent URL: #{WebDriver.browser.url}\n\tHTML Dump: #{WebDriver.browser.html}"
    case tag
    when 'span'
      click = WebDriver.browser.span(:class, value)
    when 'button'
      click = WebDriver.browser.button(:class, value)
    end
    return click.click if click.exists?
    puts "DEBUG::\n\tCurrent URL: #{WebDriver.browser.url}\n\tHTML Dump: #{WebDriver.browser.html}"
  end
end
