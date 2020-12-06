class StaticPagesController < ApplicationController
  def home
    # 今日の日付
    @standard_date = Time.current

    @user = User.find(current_user.id)

    # 体重グラフ表示用
    @healths = Health.where(user_id: current_user.id)
    # 体重データを配列で取得
    @weights = @healths.map(&:weight)
    @dates = @healths.map{|health| health.start_time.strftime('%Y/%m/%d') }

    @meals = Meal.where(user_id: current_user.id, start_time: @standard_date).includes(:food)
    # binding.pry
    @bases = Base.all

  end
end
