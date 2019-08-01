require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    def seed_quotes(content)
        # Quote.create(content: content, origin: "Ben Franklin", quotation: true, seeded: true)
        

    end

    def scrape_quote_content
        html = open("https://www.fi.edu/benjamin-franklin/famous-quotes")
        doc = Nokogiri::HTML(html)
        quotes = []

        doc.css("#node-304297").css('ol').children.each do |li|
            # if !li.css('p').empty?
            #     self.seed_quotes(li.css('p').children.first.text)
            # elsif !li.children.empty?
            #     self.seed_quotes(li.children.first.text)
            # end
            if !li.css('p').empty?
                quotes << (li.css('p').children.first.text)
            elsif !li.children.empty?
                quotes << (li.children.first.text)
            end
        end

        puts quotes

    end

end