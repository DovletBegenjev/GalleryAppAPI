class Painter < ApplicationRecord
    #validates :name, presence: true
    #validates :surname, presence: true
    #validates :birthDate, presence: true
    #validates :placeOfBirth, presence: true
    #validates :genre, presence: true
    #validates :style, presence: true
    has_many :paintings
end
