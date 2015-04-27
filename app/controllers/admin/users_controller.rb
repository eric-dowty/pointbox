class Admin::UsersController < Admin::BaseController

  before_filter :verify_admin

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(username: params[:id])
  end

  def update
    user = User.find_by(username: params[:id])

    if user.update(user_params)
      redirect_to admin_user_path(user)
    else
      flash[:errors] = user.errors.full_messages.join(", ")
      redirect_to admin_user_path(user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:points, :role, :disable)
  end

end