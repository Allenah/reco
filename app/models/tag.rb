class Tag < ApplicationRecord
  has_many :listtags
  validates :name, presence: true
end
