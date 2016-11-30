class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :province
   has_many :order_items
  validates :status, presence: true

  def subtotal
   order_items.collect { |oi| oi.valid? ? (oi.quantity.toi * oi.unitprice.tof) : 0 }.sum
 end
private
 def set_order_status
   self.order_status_id = 1
 end

 def update_subtotal
   self[:subtotal] = subtotal
 end
end
