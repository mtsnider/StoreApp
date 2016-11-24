class ProductsController < InheritedResources::Base

  def sortByPrice
    @products = Product.order(:price)
  end

  def sortByCategory
    @products = Product.order(:category_id)
  end


def index
  @products = Product.order("name").page(params[:page]).per(6)
end

def adminproducts
  @products = Product.all
end



#def search(query)
#   @products = Product.search(params[:query])
#end



  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id, :image)
    end

end
