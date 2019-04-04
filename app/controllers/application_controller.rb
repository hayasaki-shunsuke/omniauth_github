# frozen_string_literal:true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  # def authenticate_user!
  #   session[:user_return_to] = env['PATH_INFO']
  #   redirect_to user_omniauth_authorize_path(:facebook) unless user_signed_in?
  # end
end
