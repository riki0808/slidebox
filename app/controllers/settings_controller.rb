class SettingsController < ApplicationController

  def new
    @setting = Setting.new
  end
  
  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      redirect_to new_setting_path
    else
      render :new
    end
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update(setting_params)
      redirect_to edit_setting_path(id: current_user.id)
    else
      render :edit
    end
  end

  private
  def setting_params
    params.require(:setting).permit(:user_id, :font, :main_color, :sub_color).merge(user_id: current_user.id)
  end

end
