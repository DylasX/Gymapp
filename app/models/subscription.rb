class Subscription < ActiveRecord::Base
  has_one :client
end
