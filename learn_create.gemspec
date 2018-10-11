Gem::Specification.new do |s|
  s.name = 'learn_create'
  s.version = '0.0.4'
  s.date = '2018-10-10'
  s.authors = ['flatironschool']
  s.email = 'maxwell@flatironschool.com'
  s.license = 'MIT'
  s.summary = 'learn_create is a tool for creating learn.co lessons on github'
  s.files = [
    'Gemfile',
    'Rakefile',
    'lib/learn_create.rb'
  ]
  s.require_paths = ['lib']
  s.executables << 'learn_create'
end
