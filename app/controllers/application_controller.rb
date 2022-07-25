class ApplicationController < ActionController::Base

  before_action :require_login
  #sorceryが作成するメソッド。ログインしてない時not_authenticatedメソッドを発火する
  helper_method :exist_setting

  
  protected

  
  def not_authenticated
    redirect_to login_url
  end

  private
  def exist_setting
    @exist_setting = Setting.find_by(user_id: current_user.id)

  end

  # def common_user
  #   common_user = User.find_by(user_id: current_user.id)
  # end
  
end
