# This class defines end points and objects.
class Common

    def self.access_page(uri)
        WebDriver.browser.goto(uri)
        WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    end

    def self.access_form(text, list, value)
        filters_form = WebDriver.browser.form(:xpath, "//form[starts-with(@action, #{Config.page[:home_url]})]")
        if !text.nil?
            text_field = filters_form.text_field(:name, 'search')
            text_field.set(text)
        end
        if !list.nil? && !value.nil?
            filters_form.select_list(:id, list).select(value)
        end
        filters_form.submit
    end

    def self.click_span(value)
        # click = WebDriver.browser.button(:class => 'btn', :title => 'search')
        click = WebDriver.browser.span(:class, value)
        return click.click if click.exists?
    end

    def self.click_button(c_value, t_value)
        click = WebDriver.browser.button(:class => c_value, :type => t_value)
        #click = WebDriver.browser.span(:class, value)
        return click.click if click.exists?
    end

    def self.search(text)
        if !text.nil?
            WebDriver.browser.text_field(:type => 'search', :class => 'hs-input').set(text)
        end
    end

end
