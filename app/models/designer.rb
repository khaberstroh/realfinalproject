class Designer < ActiveRecord::Base
  has_many :wedding_dresses, :inverse_of => :designer
  validates :designer_last_name, :designer_first_name, :presence => true
  validates :designer_last_name, length: { maximum: 45 }
  validates :designer_first_name, length: { maximum: 45 }
end
