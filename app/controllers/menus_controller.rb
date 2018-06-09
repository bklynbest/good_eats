class MenusController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = @restaurant.menus.new(menu_params)
    @menu.save
    redirect_to restaurant_path(@restaurant)

  end

  def destroy

  end

  private

    def menu_params
      params.require(:menu).permit(:restaurant_id, :body)
    end
end
