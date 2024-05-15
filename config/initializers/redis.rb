# frozen_string_literal: true

# Redis configuration
Rails.application.configure do
 # redis://default:gVFaW09h2DkQLG1NjVg5FZNnanF5WkDH@redis-16110.c90.us-east-1-3.ec2.redns.redis-cloud.com:16110
 config.cache_store = :redis_store, {
    host: 'redis://default:gVFaW09h2DkQLG1NjVg5FZNnanF5WkDH@redis-16110.c90.us-east-1-3.ec2.redns.redis-cloud.com',
    port: 16110,
    db: 0,
    namespace: 'cache'
  }
end
