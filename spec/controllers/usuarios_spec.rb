require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do
  describe "create" do
    it "creates a user and redirect to '/'" do
      post :create, params: {
        usuario: {
          email: "daniel@gmail.com",
          nome: "daniel",
          senha: "pass123",
          senha_confirmation: "pass123"
        }
      }
      assert_redirected_to "/user_sessions/new"
    end

    it "return unprocessable_entity if user is invalid" do
      post :create, params: {usuario: {email: "daniel"}}
      assert_response(:unprocessable_entity)
    end
  end
end
