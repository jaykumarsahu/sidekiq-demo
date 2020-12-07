# frozen_string_literal: true

class TopPriorityWorker
  include Sidekiq::Worker
  sidekiq_options queue: :top

  def perform(index)
    # puts "=========#{self.class}===#{index}==========="
  end
end
