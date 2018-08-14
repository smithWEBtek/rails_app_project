class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists
  accepts_nested_attributes_for :bourbons


end
