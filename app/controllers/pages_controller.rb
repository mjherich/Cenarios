class PagesController < ApplicationController
  def home
    @special1 = Special.find(1)
    @special2 = Special.find(2)
    @special3 = Special.find(3)
    @special4 = Special.find(4)
    @special5 = Special.find(5)
    @special6 = Special.find(6)
  end
  
  def menu
  end
  
  def locations
  end
  
  def contact
  end
  
  def order
  end
end