class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :listTags, dependent: :destroy
  validates :name, :photo, :description, presence: true
  validates :list_type, presence: true, inclusion: { in: ['restaurants', 'movies', 'albums', 'mixed'] }
  mount_uploader :photo, PhotoUploader
end
