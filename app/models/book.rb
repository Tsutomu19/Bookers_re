class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: { message: 'can not be blank.' }
    validates :body, presence: { message: 'can not be blank.' },
                     length: { maximum: 200, message: 'is too long (maximum is 200 characters)' }
end
