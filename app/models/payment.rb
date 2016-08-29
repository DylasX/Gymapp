class Payment < ActiveRecord::Base
  has_one :client 
end
