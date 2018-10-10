class HomeController < ApplicationController
  def show
  	@pages = Page.where('featured = true') # 1 = true
  end
end
