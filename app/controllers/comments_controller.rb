class CommentsController < ApplicationController
  # before_filter :authenticate_user!, except: [:show, :index]
  # http_basic_authenticate_with name: "kate", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id])

    if params[:comment][:parent_id].present?
      @comment = @article.comments.find(params[:comment][:parent_id]).children.create(comment_params)
      @comment.article_id = @article.id
      @comment.save
    else
      @comment = @article.comments.create(comment_params)
    end

    redirect_to article_path(@article)

  end
 
  def destroy
    # binding.pry
    
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
