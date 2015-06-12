PumaWorkerKiller.config do |config|
  config.ram           = 1996 # mb
  config.frequency     = 5    # seconds
  config.percent_usage = 0.5
end

PumaWorkerKiller.start
