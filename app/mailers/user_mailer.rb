class UserMailer < ActionMailer::Base
  default from: 'no-reply@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def article_was_approved(article_id)
    @url  = 'http://localhost:3000'
    @article = Article.find(article_id)
    @user = @article.user
    mail(to: @user.email, subject: 'Congratulations! Your article was approved')
  end

end
