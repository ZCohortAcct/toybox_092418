class ToysController < ApplicationController
  before_action :authenticate_user!, except: %i(index show)
  before_action :set_toy, only: [:show, :edit, :update, :destroy]

  def index
   # byebug
   @toymakers = Toymaker.all
   if params[:toymaker_id]
     @toys = Toymaker.find(params[:toymaker_id]).toys
   else
    @toys = Toy.all
   end
  end

  def new
    # binding.pry
    @toy = Toy.new(toymaker_id: params[:toymaker_id])
    @toymakers = Toymaker.all 
  end

  def create
    # binding.pry
    # byebug
    @toy = Toy.new(toy_params)
    if @toy.save
      redirect_to toy_path(@toy)
    else
      @toymakers = Toymaker.all 
      render :new
    end
  end

  def show
  end

  def edit
    binding.pry
    @toymakers = Toymaker.all 

  end

  def update
    # byebug
    if @toy.update(toy_params)
      redirect_to toy_path(@toy)
    else
      @toymakers = Toymaker.all 
      render :edit
    end
  end

  def destroy
    # byebug
    @toy.destroy
    redirect_to toys_path
  end

  private
  #strong params
  def toy_params
    params.require(:toy).permit(:name, :size, :theme, :toymaker_id)
  end

  def set_toy
    @toy = Toy.find(params[:id])
  end

end
