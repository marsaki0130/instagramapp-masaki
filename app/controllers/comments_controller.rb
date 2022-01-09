class CommentsController < ApplicationController
    before_action :authenticate_user!

  def index
    @article = Article.find(params[:article_id])
    @comment = @article.comments
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save 
      redirect_to action: :index, notice:'コメントを追加'
    else
      flash.now[:error] = '失敗しました'
      render :index
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end