class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_category, only: [:index, :show]
  def index
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def set_category
    @categories = Category.all
  end
end
