class Menu < ApplicationRecord
  CURSED_TOTAL_PRICE = 77

  has_many :dishes

  validates :name, presence: true

  def total_price
    dishes.sum(&:price)
  end
end
