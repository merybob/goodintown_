class Structure < ApplicationRecord
  belongs_to :location
  has_many :events
end
