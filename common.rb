# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(class: 'row-fluid-wrapper').wait_until_present
  end

  def self.check_element(content)
    case content
    when 'home'
      # /html/body/div[2]/div[1]/div[5]/div/div/div/div/div[1]/div/h1/text()
      # xpath = '/html/body/div[2]/div[1]/div[5]/div/div/div/div/div[1]/div[contains(@text, collaborate)]'
      # puts WebDriver.browser.h1(xpath: xpath).value.to_s
      p_class = 'split-hero'
      c_class = "#{p_class}__container"
      d_class = "#{p_class}__details"
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
      puts "\n\tp_class: #{p_class}\n\tc_class: #{c_class}\n\td_class: #{d_class}"
      puts WebDriver.browser.div(class: p_class).div(class: c_class).div(class: d_class).value.to_s
    when 'contact'
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
    when 'workplace'
      puts "DEBUG::LOG::Common.check_element\n\tElement: #{content}"
    end
  end
end
