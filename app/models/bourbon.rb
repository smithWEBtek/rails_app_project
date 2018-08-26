class Bourbon < ApplicationRecord

  belongs_to :distillery
  has_many :bourbon_stockists
  has_many :stockists, through: :bourbon_stockists


  validates :name, presence: true
  validates :age, numericality: true

  scope :rare, -> { where("age = 25") }


  accepts_nested_attributes_for :stockists, :reject_if => :reject_stockist, :allow_destroy => true



   def reject_stockist(attributes)
      if attributes[:name].blank? || attributes[:address].blank?
        if attributes[:id].present?
          attributes.merge!({:_destroy => 1}) && false
        else
          true
        end
      end
    end 


   #lambda { |a| a[:name].blank? || a[:address].blank? }, :allow_destroy => true


  #:reject_if => :mark_stockists_for_destruction, :allow_destroy => true

   #def mark_stockists_for_destruction
     #stockists.each do |stockist|
       #if stockist.name.blank? or stockist.address.blank?
         #stockist.mark_for_destruction
       #end
     #end
   #end

  #def reject_stockist(attributes)
    #exists = attributes['id'].present?
    #empty = attributes.reject{|k,v| k == 'id'}.values.all?(&:blank?)
    #attributes.merge!({:_destroy => 1}) if exists and empty # destroy empty stockist
    #return (!exists and empty) # reject empty attributes
  #end


  #REJECT_ALL_BLANK_PROC	=	proc { |stockists_attributes| stockists_attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  #reject_if: proc
  #{ |stockists_attributes| stockists_attributes['name'].blank? }

  #=	proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  #before_save :mark_children_for_removal
  #reject_if: :name_blank, allow_destroy: true

    #def name_blank(a)
      #valid? && a[:id].blank? && a[:value].blank?
    #end

#def mark_children_for_removal
  #stockists.each do |stockist|
    #stockist.mark_for_destruction if stockist.name.blank?
  #end
#end

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
