class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
end
