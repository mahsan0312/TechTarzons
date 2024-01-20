# app/models/concerns/validations/article_validations.rb
module Validations
  module ArticleValidations
    extend ActiveSupport::Concern

    included do
      validates :title, presence: true, length: { maximum: 255 }
      validates :content, presence: true
      validates :body, presence: true
      validates :minutes_read, presence: true, numericality: { greater_than_or_equal_to: 0 }
    end
  end
end