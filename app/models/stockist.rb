class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists

  accepts_nested_attributes_for :bourbons
  accepts_nested_attributes_for :bourbon_stockists

  validates :name, presence: true

  def bourbon_count
    self.bourbons.size
  end 

  def bourbons_attributes=(bourbon_attributes)
    bourbon_attributes.values.each do |bourbon_attribute|
      bourbon = Bourbon.find_or_create_by(bourbon_attribute)
      self.bourbons << bourbon
    end
  end


end
