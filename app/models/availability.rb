class Availability < ActiveRecord::Base
  belongs_to :wedding_dress
  belongs_to :retailer
  validates :wedding_dress, :retailer, :presence => true
  validates :availability_website, length: { maximum: 200 }
end
