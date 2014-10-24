class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :categories

  scope :created_before, ->(time) { where("created_at < ?", time) }
  scope :created_after, ->(time) { where("created_at > ?", time) }
  
  after_create { UserMailer.welcome_email(self).deliver }

  def self.send_daily_news
    User.find_each do |user|
      user.categories.split(',').each do |category|
        NewsMailer.news_daily(user, category.id)
      end
    end
  end
end
