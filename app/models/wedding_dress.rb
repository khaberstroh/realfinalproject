class WeddingDress < ActiveRecord::Base
  belongs_to :silhouette
  belongs_to :fabric
  belongs_to :designer
  has_many :wedding_dress_details
  has_many :details, :through => :wedding_dress_detail
  has_many :availabilities
  has_many :retailers, :through => :availability
  validates :wedding_dress_name, :wedding_dress_year, :silhouette, :fabric, :designer, :presence => true
  validates :wedding_dress_name, :uniqueness => true
end
