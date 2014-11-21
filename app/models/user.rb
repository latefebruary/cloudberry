class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook, :twitter]

  # has_and_belongs_to_many :categories
  has_many :articles
  has_many :subscriptions, dependent: :destroy

  scope :created_before, ->(time) { where("created_at < ?", time) }
  scope :created_after, ->(time) { where("created_at > ?", time) }
  
  before_save :assign_authentication_token
  after_create { UserMailer.welcome_email(self).deliver }


  def self.send_daily_news
    User.find_each do |user|
      if user.subscriptions.present?
        # @links = generate_links(user)
        NewsMailer.delay.news_daily(@links)
      end
    end
  end

  # def generate_links(user)
  #   @links = []
  #   user.subscriptions.each do |sub|
  #     @articles = Category.find(sub.category_id).articles.created_after(1.week.ago)
  #   end
  #   @links << @articles
  # end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth_twitter(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.uid + "@m98v5dfg.ru" # Пока я не разберусь, как сделать нормально, царь-костыль
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.password = Devise.friendly_token[0,20]
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def assign_authentication_token
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
