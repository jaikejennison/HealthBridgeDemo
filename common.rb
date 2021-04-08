# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    puts "DEBUG::\n\turi:#{uri}"
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
  end

  def self.access_form(id, name, text, value, xpath)
    filters_form = WebDriver.browser.form(:xpath, "//*[contains(@action, #{xpath})]")
    puts "DEBUG::\n\tfilters_form:#{filters_form}"
    unless text.nil?
      text_field = filters_form.text_field(:name, name)
      puts "DEBUG::\n\ttext_field:#{text_field}"
      text_field.set(text)
    end
    filters_form.select_list(:id, id).select(value) unless id.nil? && value.nil?
    filters_form.submit
  end

  def self.click_element(tag, value)
    case tag
    when 'span'
      click = WebDriver.browser.span(:class, value)
    when 'button'
      click = WebDriver.browser.button(:class, value)
    end
    return click.click if click.exists?
  end
end
