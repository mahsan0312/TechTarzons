module Validations
  module ArticleValidations
    extend ActiveSupport::Concern
    included do
      validates :title, presence: true, length: { maximum: 255 }
      validates :body, presence: true
      validates :minutes_read, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
    end
  end
end
