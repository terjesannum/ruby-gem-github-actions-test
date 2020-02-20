$:.push File.expand_path("../lib", __FILE__)
require "testgem/version"

Gem::Specification.new do |s|
  s.name        = "testgem"
  s.version     = Testgem::VERSION
  s.author      = "Terje Sannum"
  s.email       = ["terje@offpiste.org"]
  s.homepage    = "https://github.com/terjesannum/ruby-gem-github-actions-test"
  s.license     = "MIT"
  s.summary     = %q{Dummy gem for testing github actions}
  
  s.files         = `git ls-files -z lib`.split("\x0")
  s.require_paths = ["lib"]
  
  s.add_dependency 'logfmt', '= 0.0.9'

  s.required_ruby_version = '>= 2.3.0'
  s.add_development_dependency "rspec", "~> 3.0"

  s.metadata    = {
    'github_repo' => 'ssh://github.com/terjesannum/ruby-gem-github-actions-test'
  }
end
