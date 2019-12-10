class Course < ApplicationRecord
    has_many :reviews
    # validates :tests, presence: true, length: { minimum: 1 }
end
