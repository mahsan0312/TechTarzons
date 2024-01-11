class Article < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category
  has_many :categories, through: :article_categories
end
