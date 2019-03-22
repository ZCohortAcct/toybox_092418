class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  def show
    # need to protect routes
      # binding.pry
    redirect_to new_user_session_path if current_user.id != @user.id
    @logged_in_person = current_user
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
