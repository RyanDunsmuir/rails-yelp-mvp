class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  categories = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, acceptance: { accept: categories }
end
