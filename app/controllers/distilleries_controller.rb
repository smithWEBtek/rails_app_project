class DistilleriesController < ApplicationController
  before_action :require_logged_in

  helper :all

def index
  @distilleries = Distillery.all
end

def show
  @distillery = Distillery.find(params[:id])
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
