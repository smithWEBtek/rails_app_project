class DistilleriesController < ApplicationController
  before_action :require_logged_in
  before_action :find_distillery, except: [:index, :new, :create]
  helper :all

def index
  @distilleries = Distillery.all
end

def show
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

end

def update
  @distillery.update(distillery_params)
  if @distillery.save
    redirect_to @distillery
  else
    render :edit
   end
end

def destroy
  @distillery.destroy
  flash[:notice] = "Distillery deleted"
  redirect_to distilleries_path
end

private

def distillery_params
  params.require(:distillery).permit(:name, :address)
end

def find_distillery
  @distillery = Distillery.find(params[:id])
end

end
