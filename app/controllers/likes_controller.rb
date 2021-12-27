class LikesController < ApplicatioonController
    before_action :authenticate_user!

    def create
      article = Article.find(params[:article_id]) #/articles/:article_id/like(.:format)
      article.likes.create!(user_id: current_user.id) #article_idまでは入った→その後にuser_idを入れてあげる
      redirect_to article_path(article) #「いいね」したらarticleの記事に戻る
    end

    def destroy
      article = Article.find(params[:article_id])
      like = article.likes.find_by!(user_id: current_user.id)
      like.destroy!
      redirect_to article_path(article)
    end
end