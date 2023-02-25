# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nobspw_rails7/version'

Gem::Specification.new do |spec|
  spec.name          = "nobspw_rails7"
  spec.version       = NOBSPW_RAILS7::VERSION
  spec.authors       = ["Carl Mercier", "Nao"]
  spec.email         = ["foss@carlmercier.com", "nao@naomie.digital"]

  spec.summary       = %q{No Bullshit Password strength checker}
  spec.description   = %q{No Bullshit Password strength checker. Inspired by "Password Rules are Bullshit" by Jeff Atwood. https://blog.codinghorror.com/password-rules-are-bullshit/ (Fixed to work with Rails 7)}
  spec.homepage      = "https://github.com/nomadnaomie/nobspw"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.13"
  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  spec.add_development_dependency "activemodel", "~> 5.0"
  spec.add_development_dependency "i18n", "~> 0.8.1"
  spec.add_development_dependency "subprocess"
  spec.add_development_dependency "byebug"

  if RUBY_PLATFORM =~ /darwin/
    spec.add_development_dependency 'ruby_gntp', "~> 0.3.4"
    spec.add_development_dependency 'terminal-notifier-guard', '~> 1.6.1'
  end
end
