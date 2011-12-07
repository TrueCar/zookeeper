require 'rubygems'
require 'bundler/setup'
require 'flexmock'
require 'zookeeper'

Zookeeper.logger = Logger.new(File.expand_path('../../test.log', __FILE__)).tap do |log|
  log.level = Logger::DEBUG
end


RSpec.configure do |config|
  config.mock_with :flexmock
end


# method to wait until block passed returns true or timeout (default is 10 seconds) is reached 
def wait_until(timeout=10, &block)
  time_to_stop = Time.now + timeout
  until yield do 
    break if Time.now > time_to_stop
    sleep 0.3
  end
end


