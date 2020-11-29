class FoodsController < ApplicationController
  before_action :set_food, only: [:edit, :update]
  before_action :set_foods, only: [:new, :edit]

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to new_food_path
    else
      render action: :new
    end
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to new_food_path
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to new_food_path
    else
      render action: :edit
    end
  end

end

private

def food_params
  params.require(:food).permit(:menu, :explain, :kcal, :protein, :lipid, :carb, :calcium, :iron, :vitamin_a, :vitamin_b1, :vitamin_b2, :vitamin_c, :vitamin_e, :fiber, :salt)
end

def set_food
  @food = Food.find(params[:id])
end

def set_foods
  @foods = Food.search(params[:keyword]).order('menu ASC')
end