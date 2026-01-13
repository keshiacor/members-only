class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 2000 }
  belongs_to :user
end
