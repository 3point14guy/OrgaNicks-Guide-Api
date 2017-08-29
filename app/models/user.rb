# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :vegetables, through: :gardens
  has_many :gardens
end
