class BourbonStockist < ApplicationRecord
  belongs_to :bourbon
  belongs_to :stockist


  validates :notes, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }



  #validates :notes, presence: true
  def stockist_name
      #self.try(:distillery).try(:distillery)
      #self.distillery.name
      self.stockist ? self.stockist.name : nil
    end



end
