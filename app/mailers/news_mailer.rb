class NewsMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def weekly_news(user, ids)
    @user = user
    @ids = ids
    p '!!!!!!!!!!!!!!'
    p 'mail sends correctly'
    mail(to: @user.email, subject: 'News weekly')
  end

end
