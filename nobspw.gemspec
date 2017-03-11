# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nobspw/version'

Gem::Specification.new do |spec|
  spec.name          = "nobsps"
  spec.version       = NOBSPW::VERSION
  spec.authors       = ["Carl Mercier"]
  spec.email         = ["foss@carlmercier.com"]

  spec.summary       = %q{No Bullshit Password strength checker}
  spec.description   = %q{No Bullshit Password strength checker. Inspired by "Password Rules are Bullshit" by Jeff Atwood. https://blog.codinghorror.com/password-rules-are-bullshit/}
  spec.homepage      = "https://github.com/cmer/nobspw"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.13"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"

  if RUBY_PLATFORM =~ /darwin/
    spec.add_development_dependency 'ruby_gntp'
    spec.add_development_dependency 'terminal-notifier-guard', '~> 1.6.1'
  end
end
