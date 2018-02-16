class BodyLocation < ApplicationRecord
	has_many :allocations, dependent: :destroy
	accepts_nested_attributes_for :allocations
end
