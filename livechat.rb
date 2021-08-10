require 'net/http'
require 'json'
require 'uri'
require 'csv'

    x = 150

    new_array = []

    i = 1
    num = 101

    while i < num  do

        uri = URI.parse("https://api.livechatinc.com/chats?page=#{i}")
        request = Net::HTTP::Get.new(uri)
        request.basic_auth(email, apy_key)
        request["X-Api-Version"] = "2"

        req_options = {
          use_ssl: uri.scheme == "https"
        }

        response = Net::HTTP.start( uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end

        result = JSON.parse(response.body, symbolize_names: true)


        result.values[0].each do |f|
          if f.is_a?(Hash)
            arr = []
            f[:prechat_survey].each do |v|
              p v[:value]
              arr << v[:value]
            end
            new_array << arr
          end
        end

       i += 1
    end
