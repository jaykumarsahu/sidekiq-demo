# frozen_string_literal: true

require 'sidekiq/web'


Sidekiq.configure_server do |config|
    config.options[:fetch] = Sidekiq::PriorityQueue::Fetch
  end

  Sidekiq.configure_client do |config|
    config.client_middleware do |chain|
      chain.add Sidekiq::PriorityQueue::Client
  end
end