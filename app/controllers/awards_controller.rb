class AwardsController < ApplicationController

  before_filter :current_user?

  def update
    prize = Prize.find(params[:id])

    points = current_user.points - prize.value

    if points < 0
      flash[:notice] = "You do not have enough points for this prize."
      redirect_to prize_path(prize)
    else
      current_user.update(points: points)
      current_user.prizes << prize
      flash[:notice] = "You have redeemed #{prize.name}!"
      redirect_to user_path(current_user)
    end
  end

end
