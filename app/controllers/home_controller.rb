class HomeController < ApplicationController
  def show
    @materials = Material.all
  end
end
