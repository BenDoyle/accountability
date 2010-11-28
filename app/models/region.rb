class Region < ActiveRecord::Base
  has_many :contests
  has_many :people, :through => :contests
end
