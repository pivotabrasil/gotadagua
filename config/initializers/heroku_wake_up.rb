if Rails.env.production?
  require 'rufus/scheduler'
  scheduler = Rufus::Scheduler.start_new

  scheduler.every '10m' do
    require 'net/http'
    require 'uri'
    url = "http://#{ENV['DOMAIN']}"
    Net::HTTP.get_response(URI.parse(url))
  end
end
