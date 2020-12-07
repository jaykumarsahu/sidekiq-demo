# frozen_string_literal: true

class MediumPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :medium

  def perform
    puts "=========#{self.class}=============="
  end
end
