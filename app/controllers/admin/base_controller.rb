class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  layout "admin"


  protected

  def check_admin
    redirect_to root_path, alert: 'У вас нет прав на просмотр этой страницы' unless current_user.admin?
  end

end