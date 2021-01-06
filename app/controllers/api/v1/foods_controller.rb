class Api::V1::FoodsController < ApplicationController
  def index
    food = Food.all.order(created_at: :desc)
    render json: food
  end

  def create
    food = Food.create!(food_params)
    if food
      render json: food
    else
      render json: food.errors
    end
  end

  def show
    if food
      render json: food
    else
      render json: food.errors
    end
  end

  def destroy
    # First time using Ruby's safe navigation operator
    # which protects from trying to do things on nil
    food&.destroy
    render json: { message: 'Food removed from db' }
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :category, :image)
  end

  def food
    @food ||= Food.find(params[:id])
  end
end