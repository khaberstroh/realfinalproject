class Silhouette < ActiveRecord::Base
  has_many :wedding_dresses, :inverse_of => :silhouette
  validates :silhouette_type, :presence => true
  validates :silhouette_type, length: { maximum: 45 }
end
