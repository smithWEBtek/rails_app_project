class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists

  accepts_nested_attributes_for :bourbons
  accepts_nested_attributes_for :bourbon_stockists

  validates :name, presence: true

  def bourbon_count
    self.bourbons.size
  end 


end
