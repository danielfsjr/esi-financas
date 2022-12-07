# ApplicationController
class ApplicationController < ActionController::Base
  delegate :current_user, :user_signed_in?, to: :user_session
  helper_method :current_user, :user_signed_in?, :saldo

  def user_session
    UserSession.new(session)
  end

  def require_authentication
    redirect_to new_user_sessions_path unless user_signed_in?
  end

  def require_no_authentication
    redirect_to root_path if user_signed_in?
  end

  def saldo
    Transacao.where(userId: session[:user_id]).sum('valor')
  end
end
