class HomeController < ApplicationController
  def index
   
  end
  def helper
    @welcome=PrintGreeting.getw()
  end
end
