class UserMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  # def news_daily(category, user)
  #   @user = user
  #   @category = category
  #   @url  = 'http://localhost:3000'
  #   mail(to: @user.email, subject: 'News weekly')
  # end

end
