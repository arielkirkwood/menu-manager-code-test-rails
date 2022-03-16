require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    menu = menus(:starters)
    get new_menu_dish_path(menu)
    assert_response :success
  end

  test "should post create" do
    menu = menus(:starters)
    dish_params = {params: {dish: {name: 'abc', price: 123}}}

    assert_difference("Dish.count") do
      post menu_dishes_path(menu), dish_params
    end

    assert_redirected_to menus_path
  end
end
