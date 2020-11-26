# frozen_string_literal: true

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDISTOGO_URL'], size: 1, network_timeout: 5 }
end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDISTOGO_URL'], size: 12, network_timeout: 5 }
  # ENV.fetch('REDISTOGO_URL')
end

Sidekiq::Extensions.enable_delay!
