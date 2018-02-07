class EnableOffersJob < ApplicationJob
  queue_as :default

  def perform(*args)
    OffersServices::Enable.new.call
  end
end
