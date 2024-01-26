class Article < ApplicationRecord
  include Validations::ArticleValidations

  belongs_to :user
  belongs_to :category
  has_many :categories, through: :article_categories

  enum popularity: { normal: 0, popular: 1 }

  def read_time
    "#{minutes_read} min read"
  end

  def time_format
    created_at.strftime('%b %d, %Y')
  end
end
