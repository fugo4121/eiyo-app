class TrainingsController < ApplicationController
  before_action :set_training, only: [:edit, :update]
  before_action :set_trainings, only: [:new, :edit]

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)

    if @training.save
      redirect_to new_training_path
    else
      render action: :new
    end
  end

  def destroy
    training = Training.find(params[:id])
    training.destroy
    redirect_to new_training_path
  end

  def edit
  end

  def update
    if @training.update(training_params)
      redirect_to new_training_path
    else
      render action: :edit
    end
  end
end

private

def training_params
  params.require(:training).permit(:menu, :explain, :kcal)
end

def set_training
  @training = Training.find(params[:id])
end

def set_trainings
  @trainings = Training.search3(params[:keyword3]).order('menu ASC')
end