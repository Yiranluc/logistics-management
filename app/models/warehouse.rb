class Warehouse < ActiveRecord::Base
  has_many :location, dependent: :destroy
end