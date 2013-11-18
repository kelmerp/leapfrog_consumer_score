require_relative '../lib/consumer_score'
require 'fakeweb'

FakeWeb.register_uri(:get, %r|http://internal\.leapfrogonline\.com|,
                     :body => "{\"propensity\":0.26532,\"ranking\":\"C\"}",
                     :content_type => "application/json")