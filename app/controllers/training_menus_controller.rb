class TrainingMenusController < ApplicationController
  before_action :set_training_menu, only: [:edit, :update]
  before_action :set_training_menus, only: [:new, :edit]

  def new
    @training_menu = TrainingMenu.new
  end

  def create
    @training_menu = TrainingMenu.new(training_menu_params)

    if @training_menu.save
      redirect_to new_training_menu_path
    else
      render :new
    end
  end

  def destroy
    training_menu = TrainingMenu.find(params[:id])
    training_menu.destroy
    redirect_to new_training_menu_path
  end

  def edit
  end

  def update
    if @training_menu.update(training_menu_params)
      redirect_to new_training_menu_path
    else
      render :edit
    end
  end
end

private

def training_menu_params
  params.require(:training_menu).permit(:menu, :explain, :kcal)
end

def set_training_menu
  @training_menu = TrainingMenu.find(params[:id])
end

def set_training_menus
  @training_menus = TrainingMenu.all.order('menu ASC')
end