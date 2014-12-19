class WeddingDressDetail < ActiveRecord::Base
  belongs_to :wedding_dress
  belongs_to :detail
  validates :wedding_dress, :detail, :presence => true
  validates :wedding_dress_detail_location, length: { maximum: 45 }
end
