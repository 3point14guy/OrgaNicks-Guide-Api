class GardenSerializer < ActiveModel::Serializer
  attributes :id, :comments
  has_one :vegetable
  has_one :user

end
