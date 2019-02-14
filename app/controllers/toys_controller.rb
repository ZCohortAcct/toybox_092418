class ToysController < ApplicationController
  def index
  end

  def new
    @toy = Toy.new
    @users = User.all
  end

  def create
    # binding.pry
    # byebug
    toy = Toy.new(toy_params)
    toy.save
    redirect_to toy_path(toy)
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  #strong params
  def toy_params
    params.require(:toy).permit(:name, :size, :theme, :user_id)
  end
end
