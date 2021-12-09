class ArticlesController < ApplicationController
  before_action :authenticate_user!

    def index
      @articles = Article.all
    end

    def new
      @article = current_user.articles.build #ログインしてるユーザーを取得&空の箱作る
    end

    def create
        @article = current_user.articles.build(article_params)
        if @article.save
          redirect_to article_path(@article), notice: '保存できました'
        else
          flash.now[:error] = '失敗しました'
          render.new
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :content, :eyecatch)
    end
end