class MenuItem < ApplicationRecord
  belongs_to :menu
  belongs_to :dish

  validates :dish_id, uniqueness: {scope: :menu_id}
end
