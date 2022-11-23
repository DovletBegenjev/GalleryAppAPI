class Painting < ApplicationRecord
    belongs_to :painter
    belongs_to :gallery
end
