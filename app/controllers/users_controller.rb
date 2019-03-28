class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  def show
    # need to protect routes
      # binding.pry
      # binding.pry
    @rentals = ToysUser.user_past_rentals(@user)
    @toys = @rentals.map(&:toy)
    redirect_to new_user_session_path if current_user.id != @user.id
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
