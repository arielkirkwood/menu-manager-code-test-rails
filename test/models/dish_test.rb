require "test_helper"

class DishTest < ActiveSupport::TestCase
  test "validates the uniqueness of a name" do
    dish = Dish.new(name: dishes(:soup).name)

    refute dish.valid?, "failed to check for name uniqueness during validation"
    assert_includes dish.errors.full_messages, "Name has already been taken", "failed to add dish name error message after validation"
  end

  test "validates the presence of a name" do
    dish = Dish.new(price: 0)

    refute dish.valid?, "failed to check for name presence during validation"
    assert_includes dish.errors.full_messages, "Name can't be blank", "failed to add dish name error message after validation"
  end

  test "validates the format of a name starting with e or E" do
    dishes = [Dish.new(name: 'E or e', price: 1_000), Dish.new(name: 'e or E, haha', price: 1_000)]

    refute dishes.all?(&:valid?), "failed to validate dish names started with e or E"
    assert_includes dishes.first.errors.full_messages, "Name must not start with any kind of letter e or E", "failed to add dish name error message after validation"
  end

  test "validates the presence of a price" do
    dish = Dish.new(name: 'Mozzarella Sticks')

    refute dish.valid?, "failed to check for price presence during validation"
    assert_includes dish.errors.full_messages, "Price can't be blank", "failed to add dish price error message after validation"
  end

  test "validates that a new dish does not cause a menu's price to equal something cursed" do
    menu = menus(:starters)
    dish = menu.dishes.build(name: 'Mozzarella Sticks', price: Menu::CURSED_TOTAL_PRICE - menu.total_price)

    refute dish.valid?, "failed to validate that the `dish`'s `price` #{dish.price} would not cause the `menu`'s `total_price` #{menu.total_price} to equal the cursed value #{Menu::CURSED_TOTAL_PRICE}"
    assert_includes dish.errors.full_messages, "Price would cause the associated menu to have a total price of #{Menu::CURSED_TOTAL_PRICE}", "failed to add dish price cursed menu total price error message after validation"
  end
end
