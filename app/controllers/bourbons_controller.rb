class BourbonsController < ApplicationController

  def index
    if params[:distillery_id]
      @distillery = Distillary.find_by(id: params[:distillery_id])
         if @distillery.nil?
           redirect_to distilleries_path, alert: "Distillery not found"
         else
           @bourbons = @distillery.bourbons #nested resource route
         end
    else
    @bourbons = Bourbon.all
  end
end

  def show
    if params[:distillery_id]
      @distillery = Distillary.find_by(id: params[:distillery_id])
      @bourbon = @distillery.bourbons.find_by(id: params[:id])
      if @bourbon.nil?
        redirect_to distillery_bourbons_path(@distillery), alert: 'Bourbon not found'
      end
    else
    @bourbon = Bourbon.find(params[:id])
  end
end 

  def new
    @distillery = Distillery.new
  end

  def create
    @distillery = Distillery.new(distillery_params)
    if @distillery.save
      redirect_to @distillery
    else
     render :new
   end
  end

  def edit
    @distillery = Distillery.find(params[:id])
  end

  def update
    @distillery = Distillery.find(params[:id])
    @distillery.update(distillery_params)
    if @distillery.save
      redirect_to @distillery
    else
      render :edit
     end
  end

  def destroy
    @distillery = Distillery.find(params[:id])
    @distillery.destroy
    flash[:notice] = "Distillery deleted"
    redirect_to distilleries_path
  end

  private

  def distillery_params
    params.require(:distillery).permit(:name, :address)
  end


  end











end
