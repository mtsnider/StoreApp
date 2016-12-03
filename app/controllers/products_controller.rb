class ProductsController < InheritedResources::Base
  def paginated
    @pageinatedpages = Product.order('name').page(params[:page]).per(6)
  end

  def index
    if params[:search]
      @products = Product.search(params[:search]).order('created_at DESC')
      @order_item = current_order.order_items.new
    else
      @products = Product.order('id').page(params[:page]).per(6)
      @order_item = current_order.order_items.new
    end
end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id, :image)
  end
end
