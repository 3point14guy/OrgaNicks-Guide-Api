# frozen_string_literal: true
class VegetableSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :comments
end
