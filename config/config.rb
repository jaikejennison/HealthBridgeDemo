# frozen_string_literal: true

require 'yaml'

# This class is for initalizing all things related to the website.
class Config
    def self.page
        @page
    end

    def self.setup_page(page)
        pages = Array.new
        Dir.glob("config/#{page}.yml") do |config|
            pages.push(File.basename(config, File.extname(config)))
        end
        if pages.include? page
            yaml = YAML.load(File.read("config/#{page}.yml"))
            @page = Hash.new
            @page[:domain] = yaml['domain']
            @page[:contact] = yaml['contact']
            @page[:workplace] = yaml['workplace']
            @page[:home_url] = "https://#{@page[:domain]}.com"
            @page[:contact_page] = "#{@page[:home_url]}/#{@page[:contact]}"
            @page[:workplace_page] = "#{@page[:home_url]}/#{@page[:workplace]}"
        else
            abort('Please specify a valid yml prefix')
        end
    end

end
