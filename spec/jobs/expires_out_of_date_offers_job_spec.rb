require 'rails_helper'

RSpec.describe ExpiresOutOfDateOffersJob, type: :job do

  it 'checking job enqueued name' do
    ActiveJob::Base.queue_adapter = :test
    expect {
      ExpiresOutOfDateOffersJob.perform_later
    }.to have_enqueued_job.on_queue('default')
  end

  it 'checks job enqueued time' do
    ActiveJob::Base.queue_adapter = :test
    expect {
      ExpiresOutOfDateOffersJob.set(wait_until: Date.tomorrow.noon).perform_later
    }.to have_enqueued_job.at(Date.tomorrow.noon)
  end

  it 'checks job class name' do
    ActiveJob::Base.queue_adapter = :test
    expect {
      ExpiresOutOfDateOffersJob.perform_later
    }.to have_enqueued_job(ExpiresOutOfDateOffersJob)
  end
end
