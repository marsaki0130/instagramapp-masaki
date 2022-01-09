class ArticlesController < ApplicationController
  before_action :authenticate_user!

    def index
      @articles = Article.all
    end

    def new
      @article = current_user.articles.build #ログインしてるユーザーを取得&空の箱作る
    end

    def show
      @comments = @article.comments
    end

    def create
        @article = current_user.articles.build(article_params)
        if @article.save
          redirect_to root_path, notice: '保存できました'
        else
          flash.now[:error] = '失敗しました'
          render :new
        end
    end

    def destroy
      article = current_user.articles.find(params[:id])
      article.destroy!
      redirect_to root_path, notice: '削除に成功しました'
    end

    private
    def article_params
        params.require(:article).permit(:content, eyecatch: [])
    end
end