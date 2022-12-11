# == Schema Information
#
# Table name: article_tags
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer          not null
#  tag_id     :integer          not null
#
# Indexes
#
#  index_article_tags_on_article_id  (article_id)
#  index_article_tags_on_tag_id      (tag_id)
#
# Foreign Keys
#
#  article_id  (article_id => articles.id)
#  tag_id      (tag_id => tags.id)
#
class ArticleTag < ApplicationRecord
  belongs_to :article
  belongs_to :tag
end
