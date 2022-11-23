class Article < ApplicationRecord
    #validates :id, presence: true
    validates :title, presence: true
    validates :body, presence: true
end
