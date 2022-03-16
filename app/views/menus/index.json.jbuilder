@menus.each do |menu|
  json.set! menu.name do
    json.array! menu.dishes, :id, :name, :price
  end
end
