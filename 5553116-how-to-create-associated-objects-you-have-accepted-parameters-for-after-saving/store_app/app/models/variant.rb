class Variant < ActiveRecord::Base
  belongs_to :product

  validates :count_on_hand, :numericality => true
end

