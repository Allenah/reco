class List < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :follows
  has_many :listtags
  validates :name, :image, :description, presence: true
  validates :list_type, presence: true, inclusion: {in: [restaurants, movies, albums, mixed]}
  mount_uploader :photo, PhotoUploader
end
