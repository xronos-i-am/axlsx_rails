#!/usr/bin/env ruby

if ENV['RAILS_VERSION'] =~ /^4/
  puts "Testing Rails 4"
  system('echo $RAILS_VERSION; cd spec/dummy_4 && bundle install --without debug && bundle exec rake db:create && bundle exec rake db:migrate && cd ../../ && bundle exec rspec spec')
else
  puts "Testing Rails 3"
  system('echo $RAILS_VERSION; cd spec/dummy && bundle install --without debug && bundle exec rake db:create && bundle exec rake db:migrate && cd ../../ && bundle exec rspec spec')
end