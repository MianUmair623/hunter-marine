require "redis"

    uri = URI.parse(ENV["REDIS_URL"])
    $redis = Redis.new(
                :url => ENV["REDIS_URL"],
              )