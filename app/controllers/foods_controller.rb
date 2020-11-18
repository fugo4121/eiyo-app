class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create

    @food = Food.new(food_params)

    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end
end

private

def food_params
  params.require(:food).permit(:food_name, :explain, :kcal, :protein, :lipid, :carb, :calcium, :iron, :vitamin_a, :vitamin_b1, :vitamin_b2, :vitamin_c, :vitamin_e, :fiber, :salt)
end

