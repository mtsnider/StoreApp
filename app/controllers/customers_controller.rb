class CustomersController < InheritedResources::Base



  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :province_id, :postal_code, :email)
    end

end

