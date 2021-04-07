# This class defines end points and objects.
class Common

    def self.access_page(uri)
        WebDriver.browser.goto(uri)
        WebDriver.browser.div(:class, 'row-fluid-wrapper').wait_until_present
    end

    def self.access_form(text, list, value)
        filters_form = WebDriver.browser.form(:xpath, "//form[starts-with(@action, 'https://myhealthbridge.com/join-the-team/')]")
        if !text.nil?
            text_field = filters_form.text_field(:name, 'search_keywords')
            text_field.set(text)
        end
        if !list.nil? && !value.nil?
            filters_form.select_list(:id, list).select(value)
        end
        filters_form.submit
    end

    def self.read_more
        # click = WebDriver.browser.button(:class => 'btn', :title => 'Read More')
        click = WebDriver.browser.div(:class, 'job-description').link(:class => 'btn', :title => 'Read More')
        return click.click if click.exists?
    end

end
