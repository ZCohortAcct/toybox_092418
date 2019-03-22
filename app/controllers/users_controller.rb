class UsersController < ApplicationController
  # before_action :set_user, only: :show

  def show
    # need to protect routes
    @user = current_user
    @logged_in_person = current_user
  end

  # private
  # def set_user
  #   @user = User.find(params[:id])
  # end
end
