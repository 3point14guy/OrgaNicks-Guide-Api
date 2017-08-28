class Garden < ApplicationRecord
  belongs_to :vegetable
  belongs_to :user
end
