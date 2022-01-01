class CommentsController < ApplicationController
  def new
    article = Article.find(params[:article_id]) #/articles/:article_id/comment/new
    @comment = article.comments.build
  end
end