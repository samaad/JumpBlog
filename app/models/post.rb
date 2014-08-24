class Post < ActiveRecord::Base
  attr_accessible :title, :slug, :blurb, :content, :category_id, :image
  belongs_to :category
  scope :admin, -> { where(category_id: 2) }
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  mount_uploader :image, ImageUploader
end
