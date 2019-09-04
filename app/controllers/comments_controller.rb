class CommentsController < ApplicationController
  def 
    @article = Article.find(params[:id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)    
  end

  private
  def comment_params
    params.require(:comments).permit(:commenter, :body)
  end
end
