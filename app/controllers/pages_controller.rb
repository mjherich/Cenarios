class PagesController < ApplicationController
  def home
    @special1 = Specials.find(1)
    @special2 = Specials.find(2)
    @special3 = Specials.find(3)
    @special4 = Specials.find(4)
    @special5 = Specials.find(5)
    @special6 = Specials.find(6)
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