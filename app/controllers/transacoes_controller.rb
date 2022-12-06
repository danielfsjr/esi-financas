# Transações controller
class TransacoesController < ApplicationController
  def new
    @transacao = Transacao.new
  end

  def create
    @transacao = Transacao.new(transacao_params)
    if @transacao.save
      redirect_to '/transacoes'
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def index
    redirect_to '/user_sessions/new' unless session[:user_id]

    @transacoes = Transacao.where(userId: session[:user_id])
  end

  def show
    @transacao = Transacao.where(id: params[:id], userId: session[:user_id]).first

    redirect_to '/transacoes' unless @transacao
  end

  private

  def transacao_params
    defaults = {userId: session[:user_id]}
    params.require(:transacao).permit(:valor, :descricao).reverse_merge(defaults)
  end
end
