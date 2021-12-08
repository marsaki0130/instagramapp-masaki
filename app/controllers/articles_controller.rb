class ArticlesController < ApplicationController

    def index
      @articles = Article.all
    end

    def new
      @article = current_user.articles.build #ログインしてるユーザーを取得&空の箱作る
    end

    def create
        @articles = current_user.build()
    end
end