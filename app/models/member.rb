class Member < ApplicationRecord
  belongs_to :client, class_name: "User"
  belongs_to :clinic,  class_name: "User"
end
