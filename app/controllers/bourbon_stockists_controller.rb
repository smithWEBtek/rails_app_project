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

def index
  @bourbon_stockists = BourbonStockist.all
end

def edit
  @bourbon_stockist = BourbonStockist.find(params[:id])
end

def show
  @bourbon_stockist = BourbonStockist.find(params[:id])
end

def update
  @bourbon_stockist = BourbonStockist.find(params[:id])
  @bourbon_stockist.update(bourbon_stockist_params)
  if @bourbon_stockist.save
    redirect_to @bourbon_stockist
  else
    render :edit
   end
end

  def destroy
    @bourbon_stockist = BourbonStockist.find(params[:id])
    @bourbon_stockist.destroy
    flash[:notice] = "Note deleted"
    redirect_to bourbons_path
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
