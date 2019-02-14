class ToysController < ApplicationController
  def index
  end

  def new
    @users = User.all
  end

  def create
    # binding.pry
    byebug
    toy = Toy.new(params)
    toy.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
