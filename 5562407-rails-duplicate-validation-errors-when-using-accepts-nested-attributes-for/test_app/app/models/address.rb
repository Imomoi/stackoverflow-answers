class Address < ActiveRecord::Base
  belongs_to :county
  belongs_to :event


  validates_presence_of :county
  validates_associated :county
end

