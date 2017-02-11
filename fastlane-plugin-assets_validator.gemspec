# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/assets_validator/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-assets_validator'
  spec.version       = Fastlane::AssetsValidator::VERSION
  spec.author        = %q{zesming}
  spec.email         = %q{ming9010@gmail.com}

  spec.summary       = %q{iOS project assets validator}
  spec.homepage      = "https://github.com/zesming/fastlane-plugin-assets_validator"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'cocoapods-core'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.13.0'
end
