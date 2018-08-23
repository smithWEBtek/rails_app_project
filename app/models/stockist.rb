class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists

  validates :name, presence: true

  def bourbon_count
    self.bourbons.size
  end


end
