# app/models/role.rb
class Role < ApplicationRecord
  has_and_belongs_to_many :users
end