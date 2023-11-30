Sidekiq.configure_server do |config|
  config.redis = { url: ENV['SIDEKIQ_URL'] || 'redis://127.0.0.1:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['SIDEKIQ_URL'] || 'redis://127.0.0.1:6379' }
end

require 'sidekiq/web'

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == ["admin", ENV['admin_password'] || 'stg']
end