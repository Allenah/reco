class Item < ApplicationRecord
  belongs_to :list
  has_many :comments
  has_many :likes
  has_many :bookmarks
  validates :name, :image, :description, presence: true
end
