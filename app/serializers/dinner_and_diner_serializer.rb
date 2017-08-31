class DinnerAndDinerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :vegetable
  has_one :pest
end
