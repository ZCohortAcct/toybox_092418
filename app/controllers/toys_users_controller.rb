class ToysUsersController < ApplicationController
  before_action :authenticate_user!
  def show
    rental = ToysUser.find(params[:id])
    render json: rental
  end

  def new
    @toyuser = ToysUser.new()
    render json: @toyuser
  end

  def create
    # binding.pry
    rental = current_user.toys_user.build(toys_user_params)
    rental.save
    # binding.pry
    # redirect_to user_path(rental.user)
    # render json: [rental, rental.user, rental.toy]
    render json: rental
  end
  
  def update
    # binding.pry
    toys_user = ToysUser.find_by(toy_id: params[:toy_id], user_id: current_user.id)
      toys_user.update(toy_return_date: Date.today, functional: false)
      redirect_to user_path(current_user), {alert: "We hope you enjoyed playing with the #{toys_user.toy.name}"}
  end

  private 
  def toys_user_params
    params.require(:toys_user).permit(:toy_rent_date, :functional, :toy_id)
  end
end
