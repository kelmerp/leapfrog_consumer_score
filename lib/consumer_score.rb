require "httparty"
require "json"

Dir[File.dirname(__FILE__) + '/consumer_score/*.rb'].each do |file|
  require file
end

class ConsumerScore

  BASE_URL = "http://internal.leapfrogonline.com"

  def get_score(income, zipcode, age)
    begin
      if income.class != Fixnum && income.class != Float
        raise ArgumentError, "An error has occurred: please supply a valid income"
      elsif !zipcode.to_s =~ /\d{5}/
        raise ArgumentError, "An error has occurred: please supply a valid zip code"
      elsif age.class != Fixnum
        raise ArgumentError, "An error has occurred: please supply a valid age"
      else      
        url = "#{BASE_URL}/consumer_scoring?income=#{income}&zipcode=#{zipcode}&age=#{age}"
        response = HTTParty.get(url)
        response.body
      end
    rescue Exception => e
      e.message
    end
  end
  
end