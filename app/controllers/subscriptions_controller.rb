class SubscriptionsController < ApplicationController
  def index
    @subs = Subscriptions.all
  end
end
