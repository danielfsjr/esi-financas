# CategoriesController
class CategoriesController < ApplicationController
  def index
    @categories = Category.where(user_id: session[:user_id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name).reverse_merge({user_id: session[:user_id]}))
    if @category.save
      redirect_to '/categories'
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
    @category = Category.where(id: params[:id], user_id: session[:user_id]).first
    redirect_to '/categories' unless @category
  end
end
