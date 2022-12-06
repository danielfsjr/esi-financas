require 'rails_helper'

RSpec.describe TransacoesController, type: :controller do
  let(:session) { {id: 1} }

  describe "create" do
    it "creates a transaction and redirect to '/transacoes/list'" do
      post :create, params: {
        transacao: {
          descricao: "Salário",
          valor: -100
        }
      }
      assert_redirected_to "/transacoes"
    end

    it "return unprocessable_entity if transaction is invalid" do
      post :create, params: {transacao: {descricao: "Salário"}}
      assert_response(:unprocessable_entity)
    end
  end

  describe "index" do
    it "redirect_to '/user_sessions/new' if no session[:user_id]" do
      get :index

      assert_redirected_to "/user_sessions/new"
      assert_response(:found)
    end

    it "should return 200 - OK if has session[:user_id]" do
      get :index, session: {user_id: 1}

      assert_response(:ok)
    end
  end

  describe "show" do
    it "redirect_to '/transacoes' if the is invalid transaction" do
      get :show, params: {id: 2}

      assert_redirected_to "/transacoes"
      assert_response(:found)
    end

    it "should return 200 - OK if has transaction" do
      allow(Transacao).to receive(:where).and_return("ok")
      get :show, params: {id: 1}, session: {user_id: 1}

      assert_response(:ok)
    end
  end
end
