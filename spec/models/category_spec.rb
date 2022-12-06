require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'invalido sem nome' do
    category = Category.new
    category.name = nil
    expect(category).not_to be_valid
  end
end
