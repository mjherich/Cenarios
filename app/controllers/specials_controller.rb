class SpecialsController < ApplicationController
  def new
    @special = Special.new
  end
  
  def create
    @special = Special.create(special_params)
  end
  
  private
  def special_params
    params.require(:special).permit(:image)
  end
end
