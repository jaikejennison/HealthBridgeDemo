# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
  end

  def self.check_element(content)
    case content
    when 'home'
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
      # /html/body/div[2]/div[1]/div[5]/div/div/div/div/div[1]/div/h1/text()
      puts "#{WebDriver.browser.form(:xpath, "/html/body/div[2]/div[1]/div[5]/div/div/div/div/div[1]/div/h1[contains(@text, collaborate)]").value}"
    when 'contact'
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
    when 'workplace'
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
    end
  end
end
