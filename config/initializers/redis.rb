require 'redis'

p 'configure REDIS'

redis.url = 'redis://default:gVFaW09h2DkQLG1NjVg5FZNnanF5WkDH@redis-16110.c90.us-east-1-3.ec2.redns.redis-cloud.com:16110'

$redis = Redis.new(:url => redis.url)
