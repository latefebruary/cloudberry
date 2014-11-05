class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :comment
  has_many :comments
  validates :commenter, presence: true
  validates :body, presence: true

  has_ancestry

end
