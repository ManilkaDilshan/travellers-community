class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  has_many :reviews

  def self.search(search)
    if search
      where(["location LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  validate :image_presence
  
  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end
end
