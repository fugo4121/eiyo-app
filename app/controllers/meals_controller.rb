class MealsController < ApplicationController
  def new
    @foods = Food.all
    @meals = Meal.all.includes(:food).order('start_time DESC').order('meal_flg DESC')
    @meal = Meal.new
    #binding.pry
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      @meals = Meal.all.includes(:food).order('start_time DESC').order('meal_flg DESC')
      redirect_to new_meal_path
    else
      render :new
    end
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to new_meal_path
  end

  def edit
    @foods = Food.all
    @meal = Meal.find(params[:id])
    @meals = Meal.all.includes(:food).order('start_time DESC').order('meal_flg DESC')
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to new_meal_path
    else
      render :edit
    end
  end
end

private

def meal_params
  params.require(:meal).permit(:meal_flg, :num, :start_time, :food_id).merge(user_id: current_user.id)
end
