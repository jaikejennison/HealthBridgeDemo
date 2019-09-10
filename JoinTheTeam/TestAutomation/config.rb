require 'yaml'

# This class is for initalizing all things related to the website.
class Config

    def self.page
        @page  
    end

    def self.setup_page(page)
        pages = Array.new
        Dir.glob("config/#{page}.yml") do |page_yml|
            pages.push(File.basename(page_yml, File.extname(page_yml)))
        end
        if pages.include? page
            yaml = YAML.load(File.read("config/#{page}.yml"))
            @page = Hash.new
            @page[:main_uri] = yaml['mainURI']
            @page[:home_uri] = "https://#{@page[:main_uri]}/home"
            @page[:join_the_team_uri] = "https://#{@page[:main_uri]}/join-the-team"
            @page[:leadership_uri] = "https://#{@page[:main_uri]}/leadership"
        else
            abort('Please specify a valid yml prefix')  
        end
    end

end
