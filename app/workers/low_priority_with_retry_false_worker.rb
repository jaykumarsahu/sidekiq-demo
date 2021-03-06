# frozen_string_literal: true

class LowPriorityWithRetryFalseWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low, retry: false

  def perform(index)
    puts "=========#{self.class}===#{index}==========="
    raise 'Fail'
  end
end
