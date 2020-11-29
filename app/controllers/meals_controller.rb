class MealsController < ApplicationController
  before_action :set_params, only: [:new, :edit]
  before_action :set_foods, only: [:new, :create, :edit, :update]
  before_action :set_meal, only: [:edit, :update]
  before_action :set_meals, only: [:new, :create, :edit]

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to new_meal_path
    else
      render action: :new
    end
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to new_meal_path
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to new_meal_path
    else
      render action: :edit
    end
  end
end

private

def meal_params
  params.require(:meal).permit(:period, :num, :start_time, :food_id).merge(user_id: current_user.id)
end

def set_foods
  @foods = Food.search(params[:keyword]).order('menu ASC')
end

def set_meal
  @meal = Meal.find(params[:id])
end

def set_meals
  @meals = Meal.search2(@params).includes(:food).order('start_time DESC').order('period DESC')
end

def set_params
  @params = ""
  @params1 = format("%04d", params["keyword2(1i)"].to_i)
  @params2 = format("%02d", params["keyword2(2i)"].to_i)
  @params3 = format("%02d", params["keyword2(3i)"].to_i)
  if @params1 == "0000"
    @params = ""
  else
    @params = @params.concat(@params1).concat("-")
    if @params2 == "00"
      if @params3 == "00"
      end
    else
      @params = @params.concat(@params2).concat("-")
      if @params3 == "00"
      else
        @params = @params.concat(@params3)
      end
    end
  end
end