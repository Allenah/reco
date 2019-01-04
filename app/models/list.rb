class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :listTags, dependent: :destroy
  has_many :tags, through: :listTags
  validates :name, :photo, :description, presence: true
  validates :list_type, presence: true, inclusion: { in: ['restaurants', 'movies', 'albums', 'mixed'], case_sensitive: false }
  mount_uploader :photo, PhotoUploader
  accepts_nested_attributes_for :listTags

  include PgSearch
  pg_search_scope :search_by_tag_and_friend,
    associated_against: {
      user: [:first_name, :last_name],
      tags: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
