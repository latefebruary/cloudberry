class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    # @articles = Article.all
    @articles = Article.where(:is_published => true).paginate(:page => params[:page], per_page: 9).order('id DESC')
    @popular_articles = Article.all
    # binding.pry
  end

  def show
  end

end
