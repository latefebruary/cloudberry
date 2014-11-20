class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories
  belongs_to :user
  validates :text, presence: true
  validates :title, presence: true,
                    length: { minimum: 5 }
  scope :published,               -> { where is_published: true }
  scope :created_after, ->(time) { where("created_at > ?", time) }
  mount_uploader :image, ImageUploader

end