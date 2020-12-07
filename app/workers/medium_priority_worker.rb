# frozen_string_literal: true

class MediumPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :medium

  def perform(index)
    # puts "=========#{self.class}===#{index}==========="
  end
end
