# frozen_string_literal: true

# Categories controller
class CategoriesController < ApplicationController
  def index; end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @images = @category.images
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
    @categories = Category.all
    @images = @category.images
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category Created'
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = 'Category Updated'
      redirect_to category_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy; end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
