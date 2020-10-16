class Post < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true
end
