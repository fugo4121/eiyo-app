class FoodsController < ApplicationController

  def new
    @foods = Food.all
    @food = Food.new
  end

  def create

    @food = Food.new(food_params)

    if @food.save
      @foods = Food.all
      redirect_to new_meal_path
    else
      render :new
    end
  end

  def destroy
    food = Food.find(params[:id])
    meal.destroy
    redirect_to new_meal_path
  end

  def edit
    @food = Food.find(params[:id])
    @foods = Food.all
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to new_food_path
    else
      render :edit
    end
  end

end

private

def food_params
  params.require(:food).permit(:food_name, :explain, :kcal, :protein, :lipid, :carb, :calcium, :iron, :vitamin_a, :vitamin_b1, :vitamin_b2, :vitamin_c, :vitamin_e, :fiber, :salt)
end

