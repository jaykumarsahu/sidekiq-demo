# frozen_string_literal: true

class HighPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :high

  def perform
    puts "=========#{self.class}=============="
  end
end
