class Location < ActiveRecord::Base
  belongs_to :warehouse
  has_one :inventory_item
end