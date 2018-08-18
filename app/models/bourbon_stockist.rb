class BourbonStockist < ApplicationRecord
  belongs_to :bourbon
  belongs_to :stockist
  accepts_nested_attributes_for :stockist

  validates :notes, presence: true


end
