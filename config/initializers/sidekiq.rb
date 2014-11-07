# redis = { url: (ENV['REDIS_URL'] || 'redis://127.0.0.1'), namespace: 'sidekiq' }

# Sidekiq.configure_server do |config|
#   config.redis = redis
# end

# Sidekiq.configure_client do |config|
#   config.redis = redis
# end
Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379' }
end