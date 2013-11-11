# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sitescan/version"

Gem::Specification.new do |s|
  s.name        = "sitescan"
  s.version     = SiteScan::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Todd Siegel"]
  s.email       = ["todd.siegel@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A basic website fingerpriting tool}
  s.description = %q{Find about all about a web app: what webservier it's running, any frameworks, vulnerabilities, etc.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end