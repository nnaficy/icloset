class Bottom < ActiveRecord::Base
  
  # every bottom is linked to a brand, through brand_id
  belongs_to :brand
  
  validates_existence_of :brand

end
