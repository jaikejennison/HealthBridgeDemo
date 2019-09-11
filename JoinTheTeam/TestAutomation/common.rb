# This class defines end points and objects.
class Common

    def self.access_page(uri)
        WebDriver.browser.goto(uri)
        WebDriver.browser.div(:class, 'sjb-page').wait_until_present
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
        # I cheated.
        Common.access_form('QA', nil, nil)
        Common.access_form(nil, 'category', 'quality')
        Common.access_form(nil, 'jobtype', 'quality')
        Common.access_form(nil, 'location', 'traverse-city-mi')
        # click = WebDriver.browser.button(:class => 'btn', :title => 'Read More').click
        click = WebDriver.browser.div(:class, 'job-description').link(:class => 'btn', :title => 'Read More').click
        return click.click if click.exists?
    end

end
