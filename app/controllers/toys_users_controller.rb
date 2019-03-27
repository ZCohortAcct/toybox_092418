class ToysUsersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @toyuser = ToysUser.new(toy_id: params[:toy_id])
  end

  def create
    # binding.pry
    rental = ToysUser.new(toys_user_params)
    # binding.pry
    rental.save
    redirect_to user_path(rental.user)
  end

  def update
  end

  private 
  def toys_user_params
    params.require(:toys_user).permit(:toy_rent_date, :functional, :toy_id,:user_id)
  end
end
