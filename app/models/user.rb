class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :items, :through => :likes
  has_many :bookmarks, dependent: :destroy
  has_many :items, :through => :bookmarks
  has_many :follows, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  def like!(item)
    self.likes.create(item_id: item.id)
  end

  def unlike!(item)
    like = self.likes.find_by_item_id(item.id)
  end

  def liked?(item)
    self.likes.find_by_item_id(item.id)
  end

  # def liked_item?(item_id)
  #   likes.where(user_id: id, item_id: item_id).any?
  # end

  def follow!(list)
    self.follows.create(list_id: list.id)
  end

  def unfollow!(list)
    follow = self.follows.find_by_list_id(list.id)
  end

  def followed?(list)
    self.follows.find_by_list_id(list.id)
  end

  def bookmark!(item)
    self.bookmarks.create(item_id: item.id)
  end

  def unbookmark!(item)
    bookmark = self.bookmarks.find_by_item_id(item.id)
  end

  def bookmarked?(item)
    self.bookmarks.find_by_item_id(item.id)
  end

end


