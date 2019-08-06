class Picture < ApplicationRecord
    has_many :user_pictures
    has_many :users, through: :user_pictures

    def self.seed(url)
        Picture.create(url: url, seeded: true)
    end

end
