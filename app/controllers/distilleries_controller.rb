class DistilleriesController < ApplicationController

def index
  @distilleries = Distillery.all
end

def show
end

def new
end

def create
end

def edit
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
