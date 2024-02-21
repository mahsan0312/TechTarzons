class Category < ApplicationRecord
  include Validations::CategoryValidations

  has_many :article_categories
  has_many :articles, through: :article_categories
end
