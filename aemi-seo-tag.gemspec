# frozen_string_literal: true

require_relative "lib/aemi-seo-tag/version"

Gem::Specification.new do |spec|
  spec.name          = "aemi-seo-tag"
  spec.version       = Jekyll::AemiSeoTag::VERSION
  spec.authors       = ["Guillaume COQUARD"]
  spec.email         = ["public@gcqd.fr"]
  spec.summary       = "A Jekyll plugin to add metadata tags for search engines and social networks to better index and display your site's content. Almost the same as aemi-seo-tag. But adapted to aemi-jekyll-theme's needs."
  spec.homepage      = "https://github.com/aemi-dev/aemi-seo-tag"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.required_ruby_version = ">= 2.5.0"

  spec.files         = Dir["lib/*.rb"]
  spec.files        += Dir["lib/*.html"]
  spec.files        += Dir["lib/**/*.rb"]
  spec.files        += Dir["aemi-seo-tag.gemspec"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", ">= 3.8", "< 5.0"
  spec.add_development_dependency "bundler", ">= 1.15"
  spec.add_development_dependency "html-proofer", "~> 3.7"
  spec.add_development_dependency "webrick"
  spec.add_development_dependency "aemi"
end
