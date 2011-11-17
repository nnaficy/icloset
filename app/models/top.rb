class Top < ActiveRecord::Base

  # every top is linked to a brand, through brand_id
  belongs_to :brand

  validates_existence_of :brand

end
