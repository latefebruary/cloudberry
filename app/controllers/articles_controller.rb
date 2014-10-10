class ArticlesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  # http_basic_authenticate_with name: "kate", password: "secret", except: [:index, :show]
  # autocomplete :category, :name

  def new
    @article = Article.new
    @categories = Category.all
    
  end

  def show
    @article = Article.find(params[:id])
    @categories = Category.all
    binding.pry
  end

  def index
    @categories = Category.all
    @articles = Article.all.where(is_published: true)
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
    @categories = Category.all
  	@article = Article.find(params[:id])
 
  	if @article.update(article_params)
    	redirect_to @article
  	else
    	render 'edit'
  	end
	end

	def destroy
	  @article = Article.find(params[:id])
	  @article.destroy
	 
	  redirect_to articles_path
	end
 
private
	def article_params
    	params.require(:article).permit(:title, :text, :anonce)
	end
end
