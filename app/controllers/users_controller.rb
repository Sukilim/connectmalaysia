class UsersController < ApplicationController
  def show
    # @user_profile = UserProfile.select(avatars).where(user_id: params[:id])
    @user_profile = UserProfile.where(user_id: params[:id]).first
    @request = Request.where(user_id: params[:id])
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def set_user
    @user = current_user
  end
end
