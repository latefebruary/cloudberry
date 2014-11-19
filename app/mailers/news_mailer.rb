class NewsMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def news_daily(user)
    @user = user
    mail(to: @user.email, subject: 'News weekly').deliver
  end


end
