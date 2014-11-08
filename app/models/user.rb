class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :categories
  has_many :articles

  scope :created_before, ->(time) { where("created_at < ?", time) }
  scope :created_after, ->(time) { where("created_at > ?", time) }
  
  before_save :get_authentication_token
  after_create { UserMailer.welcome_email(self).deliver }


  def self.send_daily_news
    User.find_each do |user|
      user.categories.split(',').each do |category|
        NewsMailer.delay.news_daily(user, category)
      end
    end
  end

  def get_authentication_token
    if user_token.blank?
      self.user_token = generate_authentication_token
    end
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(user_token: token).first
    end
  end

end
