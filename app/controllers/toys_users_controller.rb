class ToysUsersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @toyuser = ToysUser.new(toy_id: params[:toy_id])
  end

  def create
  end

  def update
  end
end
