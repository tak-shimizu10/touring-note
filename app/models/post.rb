class Post < ApplicationRecord
  validates :tag, :title, :text, :image, presence: true
  belongs_to :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  mount_uploader :image, ImageUploader
end
