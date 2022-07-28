class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 35}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}

    belongs_to: user
end