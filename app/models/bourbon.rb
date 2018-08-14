class Bourbon < ApplicationRecord

  belongs_to :distillery
  has_many :bourbon_stockists
  has_many :stockists, through: :bourbon_stockists
  accepts_nested_attributes_for :stockists

#method for stockist count?


end
