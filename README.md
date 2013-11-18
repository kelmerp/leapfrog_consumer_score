Leapfrog Consumer Score API wrapper
=========

This is a Ruby Gem that acts as a wrapper for Leapfrog Online's Consumer Score API.

Leapfrog's API provides scoring advice about a consumer based on their income, zip code and age. 

Version
----

0.0.1

Dependencies
-----------

This gem uses a number of open source projects to work properly:
* httparty [https://github.com/jnunemaker/httparty]


Installation
--------------

```sh
gem install leapfrog_consumer_score
```

Then require it in your project
----------------

```sh
require 'leapfrog_consumer_score'
```

Usage
--------------

```sh
score = ConsumerScore.new
income = 50000
zipcode = 60201
age = 35
score.get_score(income, zipcode, age)
```

License
----

MIT

  [kelmer perez]: http://kelmerp.github.io/
  [@kelmerperez]: http://twitter.com/kelmerperez