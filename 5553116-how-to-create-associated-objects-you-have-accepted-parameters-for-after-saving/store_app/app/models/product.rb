class Product < ActiveRecord::Base
  has_many :variants

  # This method would check if variant was created or loaded.
  #
  # So many sequantial calls to it will return same object
  def variant_with_size(size)
     self.variants.select{|v| v.size == size}.first || self.variants.where('size = ?', size).first
  end

  module ClassExtensions
    def self.included(base)
      (39..47).each do |i|
        method = "size_#{i}_quantity".to_sym
        included_module = Module.new
        included_module.module_eval <<EOF
def #{method}
  if v = self.variant_with_size(#{i})
    v.count_on_hand
  else
    0
  end
end

def #{method}=(amount)
  v = self.variant_with_size(#{i}) || self.variants.build(:size => #{i})
  v.count_on_hand = amount
  v
end
EOF
        base.send :include, included_module
      end
    end
  end

  include ClassExtensions
end

