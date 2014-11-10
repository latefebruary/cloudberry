class NewsMailer < ActionMailer::Base
  default from: 'test@mkechinov.ru'
 
  def news_daily(user, category_id)
    @user = user
    @category = Category.find(category_id)
    # @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'News weekly')
  end


end
