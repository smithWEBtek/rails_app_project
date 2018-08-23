class BourbonsController < ApplicationController
before_action :require_logged_in

helper :all


  def index
    if params[:distillery_id]
      @distillery = Distillery.find_by(id: params[:distillery_id])
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
      @distillery = Distillery.find_by(id: params[:distillery_id])
      @bourbon = @distillery.bourbons.find_by(id: params[:id])
      if @bourbon.nil?
        redirect_to distillery_bourbons_path(@distillery), alert: 'Bourbon not found'
      end
    else
    @bourbon = Bourbon.find(params[:id])
  end
end

  def new
    if params[:distillery_id] && !Distillery.exists?(params[:distillery_id])
    redirect_to distilleries_path, alert: 'Distillery not found.'
      else
    @bourbon = Bourbon.new(distillery_id: params[:distillery_id]) #will ignore if no params
    @bourbon.bourbon_stockists.build
    @bourbon.stockists.build(name: 'name here')

  end
end

  def create
    @bourbon = Bourbon.new(bourbon_params)
    if @bourbon.valid?
      @bourbon.save
      redirect_to bourbon_path(@bourbon)
    else
     render :new
   end
  end


  def edit
    if params[:distillery_id]
    @distillery = Distillery.find_by(params[:distillery_id])
    if distillery.nil?
      redirect_to distilleries_path, alert: 'Distillery not found.'
    else
      @bourbon = distillery.bourbons.find_by(id: params[:id])
      redirect_to distillery_bourbons_path(distillery), alert: 'Bourbon not found.' if
      @bourbon.nil?
      end
    else
    @bourbon = Bourbon.find(params[:id])
    end
  end

  def update
    @bourbon = Bourbon.find(params[:id])
    @bourbon.update(bourbon_params)
    if @bourbon.save
      redirect_to @bourbon
    else
      render :edit
     end
  end

  def destroy
    @bourbon = Bourbon.find(params[:id])
    @bourbon.destroy
    flash[:notice] = "Bourbon deleted"
    redirect_to bourbons_path
  end

  private

  def bourbon_params
    params.require(:bourbon).permit(:name, :age, :grain, :description,
      :distillery_name, :distillery_id,
      :stockists, stockist_ids:[], stockists_attributes: [:name, :address, :email, :phone])
  end


  end
