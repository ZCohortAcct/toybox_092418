class ToymakersController < ApplicationController
  before_action :set_toymaker, only: [:show, :edit, :update, :destroy]

  def index
    @toymakers = Toymaker.all
  end

  def new
    @toymaker = Toymaker.new()
    @toymaker.toys.build
  end

  def create
    # binding.pry
    # byebug
    @toymaker = Toymaker.new(toymaker_params)
    if @toymaker.save
      redirect_to toymaker_path(toymaker)
    else
      # byebug
      render :new
    end
  end

  def show
    # byebug
    # VIEW_HELPER_METHOD
    # opening_year(@toymaker) #=> error undef method (PR method)
    # MODEL_METHOD
    # @toymaker.opening_year #=> this is an instance method (OOR method)
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

  #how drawing of how the params will look
  # params {
  #   auth_token: ....,
  #   toymaker: {
  #     brand: ..,
  #     kind: ...,
  #     age: ...,
  # toy_attributes is set equal to an array to allow multiple toy_obj values to be created
  # the keys associate w/in toys_attributes hash rep index (or location) of element in arr
  #     toys_attributes: {
  #       0: {name:...., size: ..., theme: ...},
  #       1: {name:...., size: ..., theme: ...}
  #     }
  #   }
  # }

  def set_toymaker
    @toymaker = Toymaker.find(params[:id])
  end

end
