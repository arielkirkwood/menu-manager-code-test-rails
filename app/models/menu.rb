class Menu < ApplicationRecord
  CURSED_TOTAL_PRICE = 77

  has_many :menu_items
  has_many :dishes, through: :menu_items

  validates :name, presence: true

  def total_price
    dishes.sum(&:price)
  end
end
