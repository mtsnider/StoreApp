class ProductsController < InheritedResources::Base

  def sortByPrice
    @products = Product.order(:price)
  end

  def sortByCategory
    @products = Product.order(:category_id)
  end

def paginated
 @pageinatedpages = Product.order("name").page(params[:page]).per(6)
end

  def index
    @products = Product.all#order("name").page(params[:page]).per(6)

    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.order("name").page(params[:page]).per(6)
    end
end


    private

  def initialize_session
     session[:cart] ||= {}
  end

    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id, :image)
    end

end
