class DishesController < ApplicationController
  before_action :set_menu

  def new
    @dish = @menu.dishes.build
  end

  def create
    @dish = @menu.dishes.build(dish_params)

    if @dish.save
      redirect_to menus_path
    else
      render action: "new"
    end
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price)
  end
end
