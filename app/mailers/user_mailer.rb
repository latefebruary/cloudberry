class UserMailer < ActionMailer::Base
  default from: 'test@mkechinov.ru'
 
  def welcome_email(user)
    @user = user
    # @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def article_was_approved(article_id)
    if @user.notifications == true
      @article = Article.find(article_id)
      @user = @article.user
      mail(to: @user.email, subject: 'Your article was approved') 
    end
  end

  def article_was_declined(article_id)
    if @user.notifications == true
      @article = Article.find(article_id)
      @user = @article.user
      mail(to: @user.email, subject: 'Your article was declined') 
    end
  end

end
