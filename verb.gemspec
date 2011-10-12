# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "verb/version"

Gem::Specification.new do |s|
  s.name        = "verb"
  s.version     = Verb::VERSION
  s.authors     = ["Asa Bour"]
  s.email       = ["bourea@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{Download common English verbs}
  s.description = %q{Download common English verbs from a variety of sources}
  
  s.rubyforge_project = "verb"

	s.add_development_dependency 	'rspec', 		'>= 2.5'
	s.add_dependency							'nokogiri',	'>= 1.5.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
