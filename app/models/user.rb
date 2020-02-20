class User < ApplicationRecord

  has_many :books, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image

  validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 }
  validates :introduction, presence: true,
     length: { maximum: 50, message: 'is too long (maximum is 50 characters)' }
end
