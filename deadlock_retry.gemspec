# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

require "deadlock_retry/version"

Gem::Specification.new do |s|
  s.name = %q{deadlock_retry}
  s.version = DeadlockRetry::VERSION
  s.authors = ["Jamis Buck", "Mike Perham", "Tom Hughes"]
  s.description = s.summary = %q{Provides automatic deadlock retry and logging functionality for ActiveRecord and MySQL}
  s.email = %q{tom@compton.nu}
  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = %q{http://github.com/easybill/deadlock_retry}
  s.require_paths = ["lib"]
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'activerecord', ENV['ACTIVERECORD_VERSION'] || ' ~>5.0'
end
