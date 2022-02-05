require 'rails_helper'

RSpec.describe Article, type: :model do
    let!(:user) { create(:user)}

  context 'ユーザー名と内容が入力されている場合' do
    let!(:article) { build(:article, user: user)}

    it '記事を保存できる' do
      expect(article).to be_valid #記事が有効であることを期待する
    end
  end


  context 'コンテントが一文字の場合' do
    let!(:article) { build(:article, content: Faker::Lorem.characters(number: 1), user: user)}

    before do
      article.save
    end

    it '記事を保存できない' do
      expect(article.errors.messages[:content][0]).to eq('is too short (minimum is 2 characters)')
    end
  end
end


