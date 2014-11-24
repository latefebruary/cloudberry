class NewsMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def weekly_news(user, ids)
    @user = user
    @ids = ids
    mail(to: @user.email, subject: 'News weekly').deliver
  end

end
