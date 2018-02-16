class Video < ApplicationRecord
  self.inheritance_column = nil
  has_many :allocations
  has_many :images
  accepts_nested_attributes_for :allocations
  accepts_nested_attributes_for :images
end
