require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  test "validates the uniqueness of dish within a menu" do
    menu_item = menu_items(:one)
    dup_item = MenuItem.new(menu_item.attributes.except(:id))

    refute dup_item.valid?
  end

  test "validates the uniqueness of dish across multiple menus" do
    menu_items = [menu_items(:one), menu_items(:two)]
    dup_item = MenuItem.new(menu_items.first.attributes.except(:id))
    dup_item.menu = menu_items.last.menu

    refute dup_item.valid?
  end
end
