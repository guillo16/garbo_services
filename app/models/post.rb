class Post < ApplicationRecord
  has_one_attached :photo

  validates :title, presence: true
  validates :subtitle, presence: true
  validate :validate_photo

  def validate_photo
    return if photo.attached?

    errors.add(:photo, "no puede estar vacio")
  end
end
