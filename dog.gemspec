require_relative "lib/dog/version"

Gem::Specification.new do |spec|
  spec.name        = "dog"
  spec.version     = Dog::VERSION
  spec.authors = ["The Lesli Development Team"]
  spec.summary = "Translation management system"
  spec.license = "All rights reserved"

  spec.files = Dir["{app,config,db,lib}/**/*", "license", "Rakefile", "readme.md", "lesli.yml"]
  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/leitfaden'

  spec.add_dependency "rails", "~> 6.1.0"
end
