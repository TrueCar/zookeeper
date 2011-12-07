# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zookeeper/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = %q{zookeeper}
  s.version = Zookeeper::VERSION

  s.authors     = [%q{Phillip Pearson, Eric Maland, Evan Weaver, Brian Wickman}]
  s.description = %q{An interface to the Zookeeper distributed configuration server.}
  s.homepage    = %q{http://twitter.github.com/twitter/zookeeper/}
  s.summary     = %q{An interface to the Zookeeper distributed configuration server.}

  s.extra_rdoc_files  = %w[ CHANGELOG  LICENSE  README  ext/zookeeper_c.c  lib/zookeeper.rb ]
  s.rdoc_options      = %w[ --line-numbers  --inline-source  --title  Zookeeper  --main  README ]

  s.extensions    = %w[ ext/extconf.rb ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = %w[ lib ext ]

  s.add_development_dependency "rspec",     "~>2.7.0"
  s.add_development_dependency "flexmock",  "~>0.8.11"
end
