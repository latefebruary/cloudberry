class ArticlesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index, :destroy]
  # http_basic_authenticate_with name: "kate", password: "secret", except: [:index, :show]
  # autocomplete :category, :name

  def new
    @article = Article.new
    @categories = Category.all
    
  end

  def show
    @article = Article.find(params[:id])
    @categories = Category.all
  end

  def index
    @category = Category.find(params[:id])
    @articles = @category.articles.published
  end

  def create
    @article = Article.new(article_params)
    @article.categories = Category.find(params[:article][:category_ids].reject!(&:blank?))

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit

      @article = Article.find(params[:id])
      @categories = Category.all

  end

  def update
    @article = Article.find(params[:id])
    # binding.pry
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
    	params.require(:article).permit(:title, :text, :anonce)
	end
end
