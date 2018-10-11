Gem::Specification.new do |s|
  s.name = 'learn_review'
  s.version = '0.0.1'
  s.date = '2018-10-11'
  s.authors = ['flatironschool']
  s.email = 'maxwell@flatironschool.com'
  s.license = 'MIT'
  s.summary = 'learn_review is a tool for reviewing learn.co lessons'
  s.files = [
    'Gemfile',
    'Rakefile',
    'lib/learn_review.rb'
  ]
  s.homepage = 'https://github.com/learn-co-curriculum/learn_review'
  s.require_paths = ['lib']
  s.executables << 'learn_review'
end
