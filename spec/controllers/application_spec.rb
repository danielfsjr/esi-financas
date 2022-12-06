require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe "saldo" do
    it "saldo" do
      allow(Transacao).to receive(:sum).and_return(15.0)
      expect(controller.saldo).to eq 15.0
    end
  end
end
