class DinnerAndDiner < ApplicationRecord
  belongs_to :vegetables, inverse_of: dinner_and_diners
  belongs_to :pests, inverse_of: dinner_and_diners
end
