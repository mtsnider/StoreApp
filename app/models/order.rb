class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :province
   has_many :order_items
  validates :status, presence: true
  before_save :update_subtotal

   private


     def update_subtotal
       self[:subtotal] = subtotal
     end

end
