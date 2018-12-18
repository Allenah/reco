class Item < ApplicationRecord
  belongs_to :list
  has_many :likes, dependent: :destroy
  has_many :users, :through => :likes
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  validates :name, :description, presence: true
  validates :photo, presence: true, unless: ->(item) { item.remote_photo.present? }
  validates :remote_photo, presence: true, unless: ->(item) { item.photo.present? }
  mount_uploader :photo, PhotoUploader

  def self.find_by_name(name)
    Item.where('name ILIKE ?', "%#{name}%")
  end
end
