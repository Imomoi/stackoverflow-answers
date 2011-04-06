class Event < ActiveRecord::Base
  has_one :address
  accepts_nested_attributes_for :address, :allow_destroy => true


  validates_presence_of :address
  validates_associated :address
end

