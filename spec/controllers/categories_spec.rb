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
end
