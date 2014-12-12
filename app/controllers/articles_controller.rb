class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :destroy]

  def new
    @article = Article.new
  end

  def preview
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
    @user = current_user
  end

  def index
    if params[:id].present?
      @category = Category.find(params[:id])
      @articles = @category.articles.published
    else
      @articles = Article.all.published
    end
  end

  def create
    @article = current_user.articles.new(article_params)
    @article.categories = Category.find(params[:article][:category_ids].reject!(&:blank?))
    if @article.save
      if params[:preview]
        redirect_to articles_preview_path(id: @article.id)
      else
        redirect_to @article
      end
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
      if params[:preview]
        redirect_to articles_preview_path(id: @article.id)
      else
    	 redirect_to @article
      end
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
    	params.require(:article).permit(:title, :text, :anonce, :image, :preview, :id)
	end
end
