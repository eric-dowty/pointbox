class PrizesController < ApplicationController

  before_filter :current_user?

  def index
    @prizes = Prize.where(available: true)
  end

  def show
    @prize = Prize.find(params[:id])
  end

end