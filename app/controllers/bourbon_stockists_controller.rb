class BourbonStockistsController < ApplicationController

def new
  @bourbon_stockist = BourbonStockist.new
end

def create
  @bourbon_stockist = BourbonStockist.new(bourbon_stockist_params)
  if @bourbon_stockist.save
    redirect_to @bourbon_stockist.bourbon
   else
  render :new
   end
end

private

def bourbon_stockist_params
   params.require(:bourbon_stockist).permit(:notes, :bourbon_id, :stockist_id)
end

end

#def comment_params
  #  params.require(:comment).permit
  #(:content, :post_id, :user_id, user_attributes:[:username])
  #end
