class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists



  #before_create :remove_stockists_without_name


  def bourbon_count
    self.bourbons.size
  end


end
