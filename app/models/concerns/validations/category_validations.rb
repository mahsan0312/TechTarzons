module Validations
  module CategoryValidations
    extend ActiveSupport::Concern
    included do
      validates :name, presence: true, uniqueness: true
      validates :description, presence: true
    end
  end
end
