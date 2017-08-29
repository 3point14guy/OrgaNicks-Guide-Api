class Garden < ApplicationRecord
 belongs_to :user, inverse_of: :gardens
 belongs_to :vegetable, inverse_of: :gardens
end
