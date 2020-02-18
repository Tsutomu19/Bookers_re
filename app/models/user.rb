class User < ApplicationRecord

  has_many :books, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image

  validates :name, presence: true, uniqueness: true, length: {maximum: 50}

end
