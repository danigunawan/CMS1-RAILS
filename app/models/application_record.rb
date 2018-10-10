class ApplicationRecord < ActiveRecord::Base
  # klass abstrack adalah class yang menjadi kerangka saja tidak bisa di instance sebagai object
  self.abstract_class = true
end
