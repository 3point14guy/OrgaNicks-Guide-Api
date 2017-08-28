# frozen_string_literal: true
class PestSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
end
