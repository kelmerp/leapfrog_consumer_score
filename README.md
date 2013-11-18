Leapfrog Consumer Score API wrapper
=========

This is a Ruby Gem that acts as a wrapper for Leapfrog Online's Consumer Score API.

Leapfrog's API provides scoring advice about a consumer based on their income, zip code and age. 

Version
----

0.0.1

Dependencies
-----------

This gem uses a couple of open source projects to work properly:
* httparty [https://github.com/jnunemaker/httparty]

This dependency exists for running the rspec tests:
* fakeweb [https://github.com/chrisk/fakeweb]


Installation
--------------

```ruby
gem install leapfrog_consumer_score
```

Then require it in your project
----------------

```ruby
require 'leapfrog_consumer_score'
```

Usage
--------------

```ruby
score = ConsumerScore.new
income = 50000
zipcode = 60201
age = 35
score.get_score(income, zipcode, age)    #{"propensity"=>0.26532, "ranking"=>"C"}
```

Testing
----------------
Clone the repo into a folder in your computer and run rpsec.

```ruby
$> git clone https://github.com/kelmerp/leapfrog_consumer_score.git [yourfoldername]
$> bundle
$> cd [yourfoldername]
$> rspec
```

License
----

MIT

  [kelmer perez]: http://kelmerp.github.io/
  [@kelmerperez]: http://twitter.com/kelmerperez