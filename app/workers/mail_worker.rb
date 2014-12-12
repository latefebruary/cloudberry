class MailWorker
  include Sidekiq::Worker
  sidekiq_options :retry => false, :backtrace => true

  def perform(user_id)
    binding.pry
    @user = User.find(user_id)
    @ids = @user.articles_ids
    p 'Articles ids: ' + @ids.join(',') 
    NewsMailer.weekly_news(@user, @ids).deliver
  end

end