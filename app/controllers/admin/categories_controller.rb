class Admin::CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def new
    @category = Product.new
  end

  def create
    @category = Product.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :name
    )
  end



end
