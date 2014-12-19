class Retailer < ActiveRecord::Base
  has_many :availabilities
  has_many :wedding_dresses, :through => :availability
  validates :retailer_name, :presence => true
  validates :retailer_name, length: { maximum: 45 }
end
