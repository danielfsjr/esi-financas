require 'rails_helper'

RSpec.describe UserSessionsController, type: :controller do
  describe "destroy" do
    it "return found status" do
      delete :destroy
      assert_response(:found)
    end
  end
end
