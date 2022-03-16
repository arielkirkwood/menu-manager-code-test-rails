class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def create
  end
end
