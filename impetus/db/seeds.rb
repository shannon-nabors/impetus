Quote.destroy_all
Picture.destroy_all

scraper = Scraper.new
scraper.seed_quotes
scraper.seed_pictures


