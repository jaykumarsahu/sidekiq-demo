# frozen_string_literal: true

class LowPriorityWithRetryZeroWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low, retry: 0

  def perform(index)
    puts "=========#{self.class}===#{index}==========="
    raise 'Fail'
  end
end
