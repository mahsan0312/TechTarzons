class Article < ApplicationRecord
  include Validations::ArticleValidations

  belongs_to :user, optional: true
  belongs_to :category
  has_many :categories, through: :article_categories

  enum popularity: { normal: 0, popular: 1 }

  def read_time
    "#{minutes_read} min read"
  end
end
