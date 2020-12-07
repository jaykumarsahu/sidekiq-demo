# frozen_string_literal: true

class LowPriorityWithRetryFalseWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low, retry: false

  def perform
    puts "=========#{self.class}=============="
    raise 'Fail'
  end
end
