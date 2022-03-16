class Dish < ApplicationRecord
  NAME_FILTER_EXPRESSION = /\A[eE].*\z/

  has_one :menu_item
  has_one :menu, through: :menu_item

  validates :name, presence: true, format: { without: NAME_FILTER_EXPRESSION, message: "must not start with any kind of letter e or E" }
  validates :price, presence: true, numericality: { only_integer: true }

  validate :price_cannot_cause_menu_total_price_to_be_cursed

  private

  def price_cannot_cause_menu_total_price_to_be_cursed
    return if price.blank? || menu_total_price.blank?

    errors.add(:price, "would cause the associated menu to have a total price of #{Menu::CURSED_TOTAL_PRICE}") if menu_total_price == Menu::CURSED_TOTAL_PRICE
  end

  def menu_total_price
    @menu_total_price ||= menu&.total_price || menu_item&.menu&.total_price
  end
end
