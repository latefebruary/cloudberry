class WelcomeController < ApplicationController
  def index
    @articles = Article.published.paginate(:page => params[:page], per_page: 9).order('id DESC')
    @fresh_articles = Article.published
  end

  def show
  end

end
