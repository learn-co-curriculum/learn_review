Gem::Specification.new do |s|
  s.name        = "readability_score"
  s.version     = "0.1.3"
  s.date        = '2018-08-14'
  s.summary     = %q{Readable generates readability scores for README.md files in the terminal}
  s.description = %q{Readable uses the Odyssey gem's built in readability index scores to test a particular README.md file. Once installed, simply navigate to a directory with a README present and call the gem to get feedback on the content.}
  s.authors     = ["flatironschool"]
  s.email       = ["maxwell@flatironschool.com"]
  s.files       = ["lib/readability_score.rb"]
  s.homepage    =
    "https://github.com/learn-co-curriculum/readability_score/"
  s.license       = 'MIT'
  s.executables << 'rscore'
end
#
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "readability_score/version"
# #
# # Gem::Specification.new do |spec|
#   spec.name          = "readability_score"
#   spec.version       = ReadabilityScore::VERSION
#   spec.authors       = ["maxwellbenton"]
#   spec.email         = ["maxwellbenton@gail.com"]
#
#   spec.summary       = %q{Readable generates readability scores for README.md files in the terminal}
#   spec.description   = %q{Readable uses the Odyssey gem's built in readability index scores to test a particular README.md file. Once installed, simply navigate to a directory with a README present and call the gem to get feedback on the content.}
#   spec.homepage      = "https://github.com/learn-co-curriculum/readable/"
#   spec.license       = "MIT"
#
#   spec.files         = `git ls-files -z`.split("\x0").reject do |f|
#     f.match(%r{^(test|spec|features)/})
#   end
#   spec.bindir        = "exe"
#   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
#   spec.require_paths = ["lib"]
#
#   spec.add_development_dependency "bundler", "~> 1.16"
#   spec.add_development_dependency "rake", "~> 10.0"
#   spec.add_development_dependency "rspec", "~> 3.0"
# end
