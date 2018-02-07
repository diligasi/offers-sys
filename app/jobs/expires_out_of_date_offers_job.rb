class ExpiresOutOfDateOffersJob < ApplicationJob
  queue_as :default

  def perform(*args)
    OffersServices::Expirer.new.call
  end
end
