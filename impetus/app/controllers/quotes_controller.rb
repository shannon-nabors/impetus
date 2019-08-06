class QuotesController < ApplicationController

    def index
        @quotes = Quote.all.select do |quote|
            quote.seeded == true
        end

        render json: { quotes: @quotes }
    end

end
