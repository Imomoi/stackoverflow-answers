class Country < ActiveRecord::Base
  has_many :addresses

  validates :name, :presence => {:allow_blank => false}
end

