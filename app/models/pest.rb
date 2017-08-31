class Pest < ApplicationRecord
  has_many :vegetables, through: :dinner_and_diners
  has_many :dinner_and_diners, dependent: :destroy
end
