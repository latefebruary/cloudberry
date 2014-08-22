class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :comments
  validates :commenter, presence: true
  validates :body, presence: true
end
