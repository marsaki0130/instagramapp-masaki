require 'rails_helper'

RSpec.describe Article, type: :model do
    let!(:user) do
      User.create!({
        username: 'keisuke',
        email: 'test@example.com',
        password: 'password'
      })
    end



  context 'ユーザー名と内容が入力されている場合' do
    let!(:user) do
      User.create!({
        username: 'keisuke',
        email: 'test@example.com',
        password: 'password'
      })
    end

    # 記事を保存する
    let!(:article) do
      user.articles.build({
        content:Faker::Lorem.characters(number: 300)
      })
    end

    it '記事を保存できる' do
      expect(article).to be_valid #記事が有効であることを期待する
    end
  end


  context 'コンテントが一文字の場合' do
    let!(:article) do
      user.articles.create({
        content:Faker::Lorem.characters(number: 1)
      })
    end

    it '記事を保存できない' do
      expect(article.errors.messages[:content][0]).to eq('is too short (minimum is 2 characters)')
    end
  end
end


