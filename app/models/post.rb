class Post < ApplicationRecord
  validates :tag_id, :title, :text, :image, presence: true
  belongs_to :user
  belongs_to :tag

  mount_uploader :image, ImageUploader
end
