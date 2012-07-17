# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
require File.expand_path('../lib/usefull_extension/version', __FILE__)

Gem::Specification.new do |s|
  s.authors        = ["Andrea Bignozzi"]
  s.email            = ["skylord73@gmail.com"]
  s.description   = %q{Extend Rails capabilities of importing and exporting excel, pdf and other extension}
  s.summary      = %q{Extend Rails capabilities of importing and exporting excel, pdf and other extension}
  
  s.files             = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc", "CHANGELOG.md"]
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files      = s.files.grep(%r{^(test|spec|features)/})
  s.name            = "usefull_extension"
  s.require_paths   = ["lib"]
  s.version         = UsefullExtension::VERSION
  
  s.add_dependency "rails", "~>3.0.14"
  s.add_dependency "paperclip", '2.7.0'
  s.add_dependency "acts_as_xls"
  s.add_dependency "prawn"
end

