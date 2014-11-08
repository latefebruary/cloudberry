# require "redis"



# if ::Rails.env == "production"
#   uri = URI.parse(ENV["REDISTOGOURL"])
#   REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
# else
#   redisconf = File.read(Rails.root.join("config/redis", "#{Rails.env}.conf"))



# port = /port.(\d+)/.match(redis_conf)[1]
#   </span><span style="color:#2B2">redis-server </span><span style="background-color:hsla(0,0%,0%,0.07);color:black"><span style="font-weight:bold;color:#666">#{</span>redis_conf<span style="font-weight:bold;color:#666">}</span></span><span style="color:#161">
#   res = </span><span style="color:#2B2">ps aux | grep redis-server</span><span style="color:#161">



# unless res.include?("redis-server") && res.include?(redis_conf)
#     raise "Couldn't start redis"
#   end



# REDIS = Redis.new(:port => port)
# end