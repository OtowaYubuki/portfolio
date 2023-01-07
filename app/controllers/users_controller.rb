class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path, notice: "アカウントを削除しました"
    end
  end

  private

  def user_params
    params.require(:user).permit(:content, :image).merge(user_id: current_user.id)
  end
end
