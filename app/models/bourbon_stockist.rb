class BourbonStockist < ApplicationRecord
  belongs_to :bourbon
  belongs_to :stockist


  validates :notes, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }


  def stockist_name
      self.stockist ? self.stockist.name : nil
    end



end
