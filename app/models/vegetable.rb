class Vegetable < ApplicationRecord
  has_many :users, through: :gardens
  has_many :gardens
end
