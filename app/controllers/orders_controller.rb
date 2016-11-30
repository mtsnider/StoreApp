class OrdersController < InheritedResources::Base



  private

    def order_params
      params.require(:order).permit(:status, :customer_id, :province_id)
    end

end
