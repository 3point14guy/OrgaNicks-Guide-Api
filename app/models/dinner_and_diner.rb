class DinnerAndDiner < ApplicationRecord
  belongs_to :vegetable, inverse_of: :dinner_and_diners
  belongs_to :pest, inverse_of: :dinner_and_diners
end
