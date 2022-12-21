require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  describe "create" do
    it "creates a category and redirect to '/categories/new'" do
      post :create, params: {
        category: {
          name: "Aluguel"
        }
      }
      assert_redirected_to "/categories"
    end

    it "return unprocessable_entity if category is invalid" do
      post :create, params: {
        category: {
          name: nil
        }
      }
      assert_response(:unprocessable_entity)
    end
  end

  describe "show" do
    it "redirect_to '/transacoes' if the is invalid transaction" do
      get :show, params: {id: 2}

      assert_redirected_to "/categories"
      assert_response(:found)
    end

    it "should return 200 - OK if has transaction" do
      allow(Category).to receive(:where).and_return("ok")
      get :show, params: {id: 1}, session: {user_id: 1}

      assert_response(:ok)
    end
  end
end
