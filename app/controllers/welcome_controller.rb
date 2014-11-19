class WelcomeController < ApplicationController
  def index
    @articles = Article.where(:is_published => true).paginate(:page => params[:page], per_page: 9).order('id DESC')
  end

  def show
  end

end
