class NewsMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def news_daily(user, category_id)
    @user = user
    @category = Category.find(category_id)
    # @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'News weekly').deliver
  end


end
