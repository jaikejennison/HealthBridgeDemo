# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    begin
      WebDriver.browser.goto(uri)
      WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
      puts "DEBUG::LOG::Common.access_page\nURL: #{WebDriver.browser.url}"
    rescue StandardError => e
      puts "ERROR::StandardError::Common.access_page\n#{e}"
    end
  end

  def self.access_form(id, name, text, value, xpath)
    # begin
      puts "DEBUG::LOG::Common.access_form\nURL: #{WebDriver.browser.url}"
      form = WebDriver.browser.div(:class, 'cell-wrapper').form(:xpath, "//form[starts-with(@action, #{xpath})]")
      # form = WebDriver.browser.div(:class, 'cell-wrapper').form(:action, xpath)
      unless text.nil?
        field = form.field(:name, name)
        field.set(text)
      end
      form.select_list(:id, id).select(value) unless id.nil? && value.nil?
      form.submit
    # rescue StandardError => e
    #  puts "ERROR::StandardError::Common.access_form\n#{e}"
    # end
  end

  def self.click_element(tag, value)
    begin
      puts "DEBUG::LOG::Common.click_element\nURL: #{WebDriver.browser.url}"
      case tag
      when 'span'
        click = WebDriver.browser.span(:class, value)
      when 'button'
        click = WebDriver.browser.button(:class, value)
      end
      return click.click if click.exists?
    rescue StandardError => e
      puts "ERROR::StandardError::Common.click_element\n#{e}"
    end
  end
end
