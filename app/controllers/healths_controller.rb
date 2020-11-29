class HealthsController < ApplicationController
  before_action :set_health, only: [:edit, :update]
  before_action :set_healths, only: [:new, :create]

  def new
    @health = Health.new
    # カレンダーに内容を反映
    @healths = Health.all
    # sleep_timeモデルから、kcalカラムのみ取得
    gon.sleep_kcal = SleepTime.pluck(:kcal)
  end

  def create
    # カレンダーに内容を反映
    @healths = Health.all
    @health = Health.new(health_params)

    if @health.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    health = Health.find(params[:id])
    health.destroy
    redirect_to root_path, notice: '削除しました'
  end

  def edit
    @health = Health.find(params[:id])
  end

  def update
    if @health.update(health_params)
      redirect_to new_health_path
    else
      render :edit
    end
  end

end

private

def health_params
  params.require(:health).permit(:weight, :sleep_time_id, :memo, :start_time).merge(user_id: current_user.id)
end

def set_health
  @health = Health.find(params[:id])
end

def set_healths
  @healths = Health.all
end