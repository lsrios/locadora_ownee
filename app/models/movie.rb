class Movie < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :rent_price

    validates_uniqueness_of :name

    has_one :genre
end
