module Validations
  module ArticleValidations
    extend ActiveSupport::Concern
    included do
      validates :title, presence: true, length: { maximum: 255 }
      validates :body, presence: true
      validates :paid, inclusion: { in: [true, false] }
      validates :minutes_read, presence: true, numericality: { greater_than_or_equal_to: 0 }
    end
  end
end
