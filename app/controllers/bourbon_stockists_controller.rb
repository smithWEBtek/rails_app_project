class Bourbon_Stockists_Controller < ApplicationController

def new
  @bourbon_stockist = Bourbon_Stockist.new
end

def create
  @bourbon_stockist = Bourbon_Stockist.new(bourbon_stockist_params)
  if @bourbon_stockist.save
    redirect_to @bourbon_stockist
else
  render :new
end
end


end
