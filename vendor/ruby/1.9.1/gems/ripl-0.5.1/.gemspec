# -*- encoding: utf-8 -*-
require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/ripl/version"
 
Gem::Specification.new do |s|
  s.name        = "ripl"
  s.version     = Ripl::VERSION
  s.authors     = ["Gabriel Horner"]
  s.email       = "gabriel.horner@gmail.com"
  s.homepage    = "http://github.com/cldwalker/ripl"
  s.summary =  "ruby interactive print loop - A light, modular alternative to irb and a shell framework"
  s.description = "ripl is a light, modular alternative to irb. Like irb, it loads ~/.irbrc, has autocompletion and keeps history in ~/.irb_history.  Unlike irb, it is highly customizable via plugins and supports commands i.e. ripl-play.  This customizability makes it easy to build custom shells (i.e. for a gem or application) and complex shells (i.e. for the web). In other words, ripl is also a shell framework."
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = 'tagaholic'
  s.executables        = %w(ripl)
  s.add_dependency 'bond', '~> 0.4.0'
  s.add_development_dependency 'bacon', '>= 1.1.0'
  s.add_development_dependency 'rr', '>= 1.0.0'
  s.add_development_dependency 'bacon-bits'
  s.add_development_dependency 'bacon-rr'
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile .gemspec}
  s.files += Dir.glob(['man/*', '*.gemspec'])
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.license = 'MIT'
end
