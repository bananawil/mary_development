class Recipe < ApplicationRecord
  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions, allow_destroy: true

  has_many :measurements, dependent: :destroy
  has_many :ingredients, through: :measurements

  accepts_nested_attributes_for :measurements, allow_destroy: true
  accepts_nested_attributes_for :ingredients, allow_destroy: true



end
