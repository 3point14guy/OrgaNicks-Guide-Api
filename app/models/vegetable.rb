class Vegetable < ApplicationRecord
  has_many :users, through: :gardens
  has_many :gardens, dependent: :destroy
  has_many :pests, through: :dinner_and_diners
  has_many :dinner_and_diners, dependent: :destroy
end
