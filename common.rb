# frozen_string_literal: true

# This class defines end points and objects.
class Common
  def self.access_page(uri)
    WebDriver.browser.goto(uri)
    WebDriver.browser.div(class: 'row-fluid-wrapper').wait_until_present
  end

  def self.check_home
    p_class = 'split-hero'
    c_class = "#{p_class}__container"
    d_class = "#{p_class}__details"
    element = WebDriver.browser.div(class: p_class).div(class: c_class).div(class: d_class).h1
    # element.present?
    puts "DEBUG::LOG::Common.check_home: #{element.text}"
    return element.text.to_s
  end

  def self.check_contact
    puts 'DEBUG::LOG::Common.check_contact'
  end

  def self.check_workplace
    puts 'DEBUG::LOG::Common.check_workplace'
  end
end
