class UsersController < ApplicationController

  before_filter :current_user?

  def new
  end

  def show
  end

end