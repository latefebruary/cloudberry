class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.all
  end

  def show
  end

end
