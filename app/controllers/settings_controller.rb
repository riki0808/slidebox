class SettingsController < ApplicationController

  def new
    @setting = Setting.new
  end
  
  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @setting = Setting.where(user_id: current_user.setting.user_id)
    # binding.pry
  end

  def update
    @setting = Setting.where(user_id: current_user.setting.user_id)
    if @setting.update(setting_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def setting_params
    params.require(:setting).permit(:user_id, :font, :main_color, :sub_color).merge(user_id: current_user.id)
  end

end
