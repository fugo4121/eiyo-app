class UsersController < ApplicationController
  # user_controllerは、ログインユーザーの情報更新用 deviseのuserのeditではパスワード入力が必須のため、独自のuserコントローラーで編集する
  # application_controllerは、ログインユーザーの情報登録用
  def edit; end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:image, :name, :email, :gender, :height, :birthday)
  end
end
