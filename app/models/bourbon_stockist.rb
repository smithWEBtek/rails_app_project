class BourbonStockist < ApplicationRecord
  belongs_to :bourbon
  belongs_to :stockist
  accepts_nested_attributes_for :stockist

  validates :notes, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }



  #validates :notes, presence: true
  def stockist_name
      #self.try(:distillery).try(:distillery)
      #self.distillery.name
      self.stockist ? self.stockist.name : nil
    end



    def stockist_name=(name)
      stockist = Stockist.find_or_create_by(name: name)
      self.stockist = stockist
    end



end
