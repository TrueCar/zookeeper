require 'rubygems'
require 'zookeeper'
zk = Zookeeper.new(ENV["ZK_HOSTS"] || 'localhost:2181')

puts "get acl #{zk.get_acl(:path => '/').inspect}"
puts "zerror #{zk.zerror(Zookeeper::ZBADVERSION)}"

