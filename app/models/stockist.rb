class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists

    validates_presence_of :name

  #before_create :remove_stockists_without_name


  def bourbon_count
    self.bourbons.size
  end


end
