class Admin::PrizesController < Admin::BaseController

  before_filter :verify_admin

  def new
  end

  def index
    @prizes = Prize.where(archive: false)
  end

  def show
    @prize = Prize.find(params[:id])
  end

  def edit
    @prize = Prize.find(params[:id])
  end

  def update
    prize = Prize.find(params[:id])

    if prize.update(prize_params)
      redirect_to admin_prize_path(prize)
    else
      flash[:errors] = prize.errors.full_messages.join(', ')
      render :edit
    end
  end

  def create
    prize = Prize.new(prize_params)

    if prize.save
      redirect_to admin_prize_path(prize)
    else
      flash[:errors] = prize.errors.full_messages.join(', ')
      render :new
    end
  end

  def archive
    Prize.find(params[:id]).update(archive: true)
    redirect_to admin_prizes_path
  end

  def show_archives
    @archive_prizes =  Prize.where(archive: true)
  end

  private

  def prize_params
    params.require(:prize).permit(:name, :description, :value, :available, :image)
  end

end