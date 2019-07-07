require "net/http"
require "uri"
require "json"

uri = URI("https://www.example.com")
request = Net::HTTP::Post.new(uri.request_uri, "Content-Type" => "application/json")
request.body = {mocha: 400}.to_json
https_session = Net::HTTP.new(uri.host, uri.port)
https_session.use_ssl = true
response = https_session.start do |session|
  session.request(request)
end
p response
