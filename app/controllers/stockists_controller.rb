class StockistsController < ApplicationController

  def index
    @stockists = Stockist.all
  end

  def show
    @stockist = Stockist.find(params[:id])
  end

  def new
    @stockist = Stockist.new
  end

  def create
    @stockist = Stockist.new(stockist_params)
    if @stockist.save
      redirect_to @stockist
    else
     render :new
   end
  end

  def edit
    @stockist = Stockist.find(params[:id])
  end

  def update
    @stockist = Stockist.find(params[:id])
    @stockist.update(stockist_params)
    if @stockist.save
      redirect_to @stockist
    else
      render :edit
     end
  end

  def destroy
    @stockist = Stockist.find(params[:id])
    @stockist.destroy
    flash[:notice] = "Stockist deleted"
    redirect_to Stockists_path
  end

  private

  def stockist_params
    params.require(:stockist).permit(:name, :address, :email, :phone, bourbon_ids:[],
      bourbons_attributes: [:name, :year, :grain, :description])
      
  end


  end
