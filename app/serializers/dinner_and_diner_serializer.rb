class DinnerAndDinerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :vegetables
  has_one :pests
end
