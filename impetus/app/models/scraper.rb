require 'byebug'
require 'nokogiri'
require 'open-uri'

class Scraper

    def seed_quotes
        html = open("https://www.fi.edu/benjamin-franklin/famous-quotes")
        doc = Nokogiri::HTML(html)

        doc.css("#node-304297").css('ol').children.each do |li|
            if !li.css('p').empty?
                Quote.seed(li.css('p').children.first.text)
            elsif !li.children.empty?
                Quote.seed(li.children.first.text)
            end
        end
    end

    def seed_pictures
        html = open("https://www.pexels.com/search/desktop%20wallpaper/")
        doc = Nokogiri::HTML(html)
        doc.css(".photos").css("article").each do |article|
            Picture.seed(article["data-photo-modal-image-grid-item-srcset"])
        end
    end

end

