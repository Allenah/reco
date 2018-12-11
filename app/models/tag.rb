class Tag < ApplicationRecord
  has_many :listtags, dependent: :destroy
  validates :name, presence: true
end
