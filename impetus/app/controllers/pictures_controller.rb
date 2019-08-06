class PicturesController < ApplicationController

    def index
        @pictures = Picture.all.select do |picture|
            picture.seeded == true
        end

        render json: { pictures: @pictures }
    end

end
