class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :location
  belongs_to :location
  belongs_to :company
  belongs_to :user
  has_one :picking_order
end
