class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :destroy]

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    @user = current_user
  end

  def index
    @category = Category.find(params[:id])
    @articles = @category.articles.published
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.categories = Category.find(params[:article][:category_ids].reject!(&:blank?))

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
      @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.categories = Category.find(params[:article][:category_ids].reject!(&:blank?))
 
  	if @article.update(article_params)
    	redirect_to @article
  	else
    	render 'edit'
  	end
	end

	def destroy
    authenticate_user! unless admin_user_signed_in?
	  @article = Article.find(params[:id])
	  @article.destroy
	 
	  redirect_to root_path, notice: 'Article was successfully destroyed!'
	end

 
private
	def article_params
    	params.require(:article).permit(:title, :text, :anonce, :image)
	end
end
