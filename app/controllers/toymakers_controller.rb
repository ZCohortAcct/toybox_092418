class ToymakersController < ApplicationController
  before_action :set_toymaker, only: [:show, :edit, :update, :destroy]

  def index
    @toymakers = Toymaker.all
  end

  def new
    @toymaker = Toymaker.new()
    @toymaker.toys.build
    @toymaker.toys.build
  end

  def create
    # binding.pry
    # byebug
    @toymaker = Toymaker.new(toymaker_params)
    if @toymaker.save
      redirect_to toymaker_path(toymaker)
    else
      render :new
    end
  end

  def show
  end

  def edit
    
  end

  def update
    # byebug
    @toymaker.update(toymaker_params)
    redirect_to toymaker_path(@toymaker)
  end

  def destroy
    # byebug
    @toymaker.destroy
    redirect_to toymakers_path
  end

  private
  #strong params
  def toymaker_params
    params.require(:toymaker).permit(:brand, :kind, :age, toys_attributes: [
      :name,
      :size,
      :theme
    ])
  end

  def set_toymaker
    @toymaker = Toymaker.find(params[:id])
  end
  
end
