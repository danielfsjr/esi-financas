# Usuario controller
class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to '/user_sessions/new'
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :senha, :senha_confirmation)
  end

  def login
    @session = UserSession.new
  end
end
