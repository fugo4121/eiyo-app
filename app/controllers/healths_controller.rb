class HealthsController < ApplicationController
  def index
  end
  
  def new
    @health = Health.new
    # sleep_timeモデルから、kcalカラムのみ取得
    gon.sleep_kcal = SleepTime.pluck(:kcal)
  end

  def create
    @health = Health.new(health_params)

    if @health.save
      redirect_to root_path
    else
      render :new
    end
  end
end

private

def health_params
  params.require(:health).permit(:recording_date, :memo, :sleep_time_id, :burn_kcal).merge(user_id: current_user.id)
end

