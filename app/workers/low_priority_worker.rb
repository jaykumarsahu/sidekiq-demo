# frozen_string_literal: true

class LowPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :low

  def perform
    puts "=========#{self.class}=============="
  end
end
