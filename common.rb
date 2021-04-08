# This class defines end points and objects.
class Common

    def self.access_page(uri)
        WebDriver.browser.goto(uri)
        WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    end

    def self.access_form(id, name, text, value, xpath)
        filters_form = WebDriver.browser.form(:xpath, "//form[@action, #{xpath}]")
        if !text.nil?
            text_field = filters_form.text_field(:name, name)
            text_field.set(text)
        end
        if !id.nil? && !value.nil?
            filters_form.select_list(:id, id).select(value)
        end
        filters_form.submit
    end

    def self.click_element(tag, value)
        case tag
        when 'span'
            click = WebDriver.browser.span(:class, value)
        when 'button'
            click = WebDriver.browser.button(:class, value)
        end
        #click = WebDriver.browser.{tag}(:class, value)
        return click.click if click.exists?
    end

end
