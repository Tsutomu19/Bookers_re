class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true, length: { maximum: 200, message: 'is too long (maximum is 200 characters)' }
end