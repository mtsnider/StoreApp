class CustomersController < InheritedResources::Base
def index
  @customer = Customer.all
end

def create_new_user
   username = params[:data][:username]
 password = params[:data][:password]
 first_name = params[:data][:first_name]
 last_name = params[:data][:last_name]
 email = params[:data][:email]
 address = params[:data][:address]
 city = params[:data][:city]
 province = params[:data][:province]

 @new_customer = Customer.new(:first_name => first_name,
                  :last_name => last_name,
                  :email => email,
                  :address => address,
                  :city => city,
                  :province_id => province)

 if @new_customer.valid?
   @new_user = User.new(:username => username, :password => password, :customer => @new_customer)
   if @new_user.valid?
   @new_user.save
   session[:user] = @new_user.user_name
     redirect_to home_path
   else
     render json: {error: @new_user.errors}
   end
 else
   render json: {error: @new_customer.errors}
 end
 end



  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :province_id, :postal_code, :email)
    end

end
