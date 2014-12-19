class Fabric < ActiveRecord::Base
  has_many :wedding_dresses, :inverse_of => :fabric
  validates :fabric_type, :presence => true
  validates :fabric_type, length: { maximum: 45 }
end
