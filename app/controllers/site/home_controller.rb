class Site::HomeController < ApplicationController
  
  def index
    @animals = Animal.all.page(params[:page])
  end


end
