class Detail < ActiveRecord::Base
  has_many :wedding_dress_details
  has_many :wedding_dresses, :through => :wedding_dress_detail
  validates :detail_type, :presence => true
  validates :detail_type, length: { maximum: 45 }
end
