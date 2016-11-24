class AdminController < ApplicationController

  def adminproducts
    @products = Product.all
  end

end
