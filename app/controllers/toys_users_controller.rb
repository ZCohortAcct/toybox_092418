class ToysUsersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @toyuser = ToysUser.new(toy_id: params[:toy_id])
  end

  def create
    # binding.pry
    rental = ToysUser.new(toys_user_params)
    rental.save
    redirect_to user_path(rental.user)
  end
  
  def update
    # binding.pry
    toys_user = ToysUser.find_by(toy_id: params[:toy_id], user_id: current_user.id)
      toys_user.update(toy_return_date: Date.today, functional: false)
      redirect_to user_path(current_user), {alert: "We hope you enjoyed playing with the #{toys_user.toy.name}"}
  end

  private 
  def toys_user_params
    params.require(:toys_user).permit(:toy_rent_date, :functional, :toy_id,:user_id)
  end
end
