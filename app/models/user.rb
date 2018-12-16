class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :items, :through => :likes
  has_many :bookmarks, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader



  def liked_item?(item_id)
    likes.where(user_id: id, item_id: item_id).any?
  end

end


