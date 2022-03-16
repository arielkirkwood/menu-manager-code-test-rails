require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_dish_url
    assert_response :success
  end

  test "should post create" do
    post dishes_url
    assert_response :success
  end
end
