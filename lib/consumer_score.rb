require "httparty"

Dir[File.dirname(__FILE__) + '/consumer_score/*.rb'].each do |file|
  require file
end

class ConsumerScore

  BASE_URL = "http://internal.leapfrogonline.com"

  def get_score(income, zipcode, age)
    url = "#{BASE_URL}/consumer_scoring?income=#{income}&zipcode=#{zipcode}&age=#{age}"
    response = HTTParty.get(url)
    response.body
  end
  
end