class GardenSerializer < ActiveModel::Serializer
  attributes :id
  has_one :vegetable
  has_one :user
end
