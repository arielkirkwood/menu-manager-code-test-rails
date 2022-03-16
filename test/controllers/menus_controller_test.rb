require "test_helper"

class MenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menus_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_url
    assert_response :success
  end

  test "should post create" do
    menu_params = {params: {menu: {name: 'Desserts'}}}

    assert_difference("Menu.count") do
      post menus_path, menu_params
    end

    assert_redirected_to menus_path
  end
end
