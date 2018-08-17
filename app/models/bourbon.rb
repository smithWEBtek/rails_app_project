class Bourbon < ApplicationRecord

  belongs_to :distillery
  has_many :bourbon_stockists
  has_many :stockists, through: :bourbon_stockists
  accepts_nested_attributes_for :stockists

#method for stockist count?

def distillery_name
    #self.try(:distillery).try(:distillery)
    #self.distillery.name
    self.distillery ? self.distillery.name : nil
  end

  def distillery_name=(name)
    distillery = Distillery.find_or_create_by(name: name)
    self.distillery = distillery
  end

  def stockists_attributes=(stockist_attributes)
    stockist_attributes.values.each do |stockist_attribute|
      stockist = Stockist.find_or_create_by(stockist_attribute)
      self.stockists << stockist
    end
  end


end
