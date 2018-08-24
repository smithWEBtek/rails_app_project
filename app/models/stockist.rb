class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists

  

  def bourbon_count
    self.bourbons.size
  end


end
