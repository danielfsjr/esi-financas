# Transações controller
class TransacoesController < ApplicationController
  def new
    @transacao = Transacao.new
    @categories = Category.where(user_id: session[:user_id])
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
    @categories = Category.where(user_id: session[:user_id])
    @transacoes = Transacao.where(predicados_filtro)
  end

  def show
    @transacao = Transacao.where(id: params[:id], userId: session[:user_id]).first
    redirect_to '/transacoes' unless @transacao
  end

  private

  def transacao_params
    defaults = {userId: session[:user_id]}
    params.require(:transacao).permit(:category_id || nil, :valor, :descricao).reverse_merge(defaults)
  end

  def predicados_filtro
    predicados = {userId: session[:user_id]}
    category_id = params['category_id']
    descricao = params['descricao']

    predicados['category_id'] = category_id if category_id && category_id != ''
    predicados['descricao'] = descricao if descricao && descricao != ''

    predicados
  end
end
