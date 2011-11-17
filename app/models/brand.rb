class Brand < ActiveRecord::Base

  # a brand can have many items of clothing
  has_many :tops
  has_many :bottoms
  has_many :shoes
  has_many :accessories

end
