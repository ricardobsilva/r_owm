# frozen_string_literal: true

require_relative "lib/r_owm/version"

Gem::Specification.new do |spec|
  spec.name          = "r_owm"
  spec.version       = ROwm::VERSION
  spec.authors       = ["Ricardo"]
  spec.email         = ["ricardo.b.silva13@gmail.com"]

  spec.summary       = "open weather map gem"
  spec.description   = "open weather map gem"
  spec.homepage      = "https://github.com/ricardobsilva/r_owm"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = 'https://github.com/ricardobsilva/r_owm'
  spec.metadata["source_code_uri"] = "https://github.com/ricardobsilva/r_owm"
  spec.metadata["changelog_uri"] = "https://github.com/ricardobsilva/r_owm"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency "pry", '~> 0.13.1'
  spec.add_dependency "rubocop", "~> 0.80"
  spec.add_dependency 'httparty', '0.18.1'
  spec.add_dependency 'webmock', '3.11.0'
  spec.add_dependency 'vcr', '~> 2.9', '>= 2.9.2'
  spec.add_dependency 'json', '~> 1'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
