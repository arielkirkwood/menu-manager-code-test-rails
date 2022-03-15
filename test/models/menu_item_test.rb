require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  test "validates the uniqueness of dish within a menu" do
    menu_item = menu_items(:one)
    dup_item = MenuItem.new(menu_item.attributes.except(:id))

    refute dup_item.valid?
  end
end
