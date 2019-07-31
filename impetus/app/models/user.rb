class User < ApplicationRecord
    has_many :user_quotes
    has_many :quotes, through: :user_quotes
    has_many :user_pictures
    has_many :pictures, through: :user_pictures

end
