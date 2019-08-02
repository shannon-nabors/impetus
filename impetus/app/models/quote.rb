class Quote < ApplicationRecord
    has_many :user_quotes
    has_many :users, through: :user_quotes

    def self.seed(content)
        Quote.create(content: content, origin: "Ben Franklin", quotation: true, seeded: true)
    end
    
end
