 class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to @owner, notice: 'Successfully recorded owner'
    else
      render 'new'
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy!
    redirect_to owners_path
  end

  private
  def owner_params
    params.require(:owner).permit(:id, :first_name, :last_name, :email, :company, :building)
  end
end
