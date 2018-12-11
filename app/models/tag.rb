class Tag < ApplicationRecord
  has_many :listTags, dependent: :destroy
  validates :name, presence: true
end
