# frozen_string_literal: true

class HighPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :high

  def perform(index)
    # puts "=========#{self.class}===#{index}==========="
  end
end
