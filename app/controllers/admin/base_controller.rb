class Admin::BaseController < ApplicationController

  def verify_admin
    redirect_to user_path(current_user) unless current_admin?
  end

end