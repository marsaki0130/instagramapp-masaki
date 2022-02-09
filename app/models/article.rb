# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
class Article < ApplicationRecord
    has_many_attached :eyecatch
    # has_rich_text :content

    validates :content, presence: true, length: {minimum: 2}
    
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    belongs_to :user

    def like_count
      likes.count
    end

    def display_created_at
      I18n.l(self.created_at, format: :long)
    end
end
