class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    lang = params[:l]
    I18n.locale = lang || I18n.default_locale
    Rails.logger.info "Request in lang: #{lang} -> set to #{I18n.locale}"
  end
end
