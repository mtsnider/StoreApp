class User < ApplicationRecord
  has_one :customer
  validates :username, :password, :customer, presence: true, allow_blank: false

  def user_params
      params.require(:user).permit(:username, :password, :customer)
  end
end
