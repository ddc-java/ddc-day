# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'ddc-day'
  s.version       = '0.1.0'
  s.license       = 'Apache-2.0'
  s.authors       = ['Nick Benett']
  s.email         = ['nick@nickbenn.com']
  s.homepage      = 'https://nickbenn.com'
  s.summary       = 'DDC Day is a Jekyll theme by Nick Bennett, based on Leap Day by Matt Graham, intended for GitHub Pages-hosted curriculum used in the Deep Dive Coding Java+Android Bootcamp.'

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README)(\.(txt|md|markdown)|$)|(.*\.(md|html)))}i)
  end

  s.platform = Gem::Platform::RUBY
  s.add_runtime_dependency 'jekyll', '> 3.5', '< 5.0'
  s.add_runtime_dependency 'jekyll-seo-tag', '~> 2.0'
  s.add_development_dependency 'html-proofer', '~> 3.0'
  s.add_development_dependency 'rubocop', '~> 0.50'
  s.add_development_dependency 'w3c_validators', '~> 1.3'
end
