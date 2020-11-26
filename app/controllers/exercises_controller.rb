class ExercisesController < ApplicationController
  before_action :set_params, only: [:new, :edit]
  before_action :set_trainings, only: [:new, :create, :edit, :update]
  before_action :set_exercise, only: [:edit, :update]
  before_action :set_exercises, only: [:new, :create, :edit]

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to new_exercise_path
    else
      render :new
    end
  end

  def destroy
    exercise = Exercise.find(params[:id])
    exercise.destroy
    redirect_to new_exercise_path
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to new_exercise_path
    else
      render :edit
    end
  end
end

private

def exercise_params
  params.require(:exercise).permit(:set, :start_time, :training_id).merge(user_id: current_user.id)
end

def set_trainings
  @trainings = Training.search3(params[:keyword3]).order('menu ASC')
end

def set_exercise
  @exercise = Exercise.find(params[:id])
end

def set_exercises
  @exercises = Exercise.search4(@params).includes(:training).order('start_time DESC')
end

def set_params
  @params = ""
  @params1 = format("%04d", params["keyword4(1i)"].to_i)
  @params2 = format("%02d", params["keyword4(2i)"].to_i)
  @params3 = format("%02d", params["keyword4(3i)"].to_i)
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
