module Common

    def access_page(uri)
        WebDriver.browser.goto(uri)
        WebDriver.browser.div(:class, 'sjb-page').wait_until_present
    end

    def access_form(text, list, value)
        filters_form = WebDriver.browser.form(:xpath, "//form[starts-with(@action, 'https://myhealthbridge.com/join-the-team/')]")
        text_field = filters_form.text_field(:name, 'search_keywords')
        text_field.set(text)
        filters_form.select_list(:id, list).select_value(value)
        filters_form.submit
    end

    def read_more
        WebDriver.browser.link(:class 'btn', :title 'Read More').click
    end
    
end
World(Common)
