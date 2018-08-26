class Stockist < ApplicationRecord

  has_many :bourbon_stockists
  has_many :bourbons, through: :bourbon_stockists


    after_save { |stockist| stockist.destroy if stockist.name.blank? }


  #before_create :remove_stockists_without_name

  #before_save :destroy_if_blank


  def bourbon_count
    self.bourbons.size
  end

  #private
  #def destroy_if_blank
    #logger.info "destroy_if_blank called"
  #end

end
