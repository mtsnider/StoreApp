class CategoryController < ApplicationController
  def index
  	   @categories = Catagory.all
  	end

  	def show
  	  @categories = Catagory.find(params[:id])
  	end


end
