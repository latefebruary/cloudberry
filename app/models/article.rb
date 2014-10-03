class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories
  validates :text, presence: true
  validates :title, presence: true,
                    length: { minimum: 5 }
end