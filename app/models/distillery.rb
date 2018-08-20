class Distillery < ApplicationRecord
    has_many :bourbons
    validates :name, :presence => true
end
