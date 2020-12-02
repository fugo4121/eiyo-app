class RecordsController < ApplicationController

  def index
    # 今日の日付
    @standard_date = Time.current
    # 曜日表示用
    @weeks = %w[日 月 火 水 木 金 土]
    # 今日を基準に月〜日取得
    # @date_range = @standard_date.beginning_of_week.to_date..@standard_date.end_of_week.to_date

    @user = User.find(current_user.id)
    @healths = Health.all
    @meals = Meal.all.includes(:food)
    @exercises = Exercise.all.includes(:training)
    @sleep_times = SleepTime.all
    @bases = Base.all
  end
end
