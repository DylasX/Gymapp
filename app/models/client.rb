class Client < ActiveRecord::Base
  belongs_to :subscription
  belongs_to :payment
  
end
