# frozen_string_literal: true

class LowPriorityWithRetryZeroWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low, retry: 0

  def perform
    puts "=========#{self.class}=============="
    raise 'Fail'
  end
end
