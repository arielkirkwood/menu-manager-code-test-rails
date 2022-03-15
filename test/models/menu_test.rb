require "test_helper"

class MenuTest < ActiveSupport::TestCase
  test "defines a CURSED_TOTAL_PRICE" do
    assert defined?(Menu::CURSED_TOTAL_PRICE)
  end

  test "defaults to a total_price of zero without any dishes" do
    assert Menu.new.total_price.zero?
  end

  test "validates the presence of a name" do
    menu = Menu.new

    refute menu.valid?, "failed to check for name presence during validation"
    assert_includes menu.errors.full_messages, "Name can't be blank", "failed to add error message after validation"
  end

  test "provides access to associated dish records when available" do
    menu = menus(:starters)

    refute_empty menu.dishes, "menu failed to include any dishes"
  end
end
