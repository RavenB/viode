class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category  = Category.find params[:id]
    @questions = @category.questions.includes(:answers, :author).recent.page(params[:page]).per(20)
  end
end
