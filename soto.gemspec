Gem::Specification.new do |s|
  s.name = 'soto'
  s.version = '0.1.1'
  s.executables << 'soto'
  s.date = '2015-11-16'
  s.summary = 'Extract revision number of last successful TeamCity build'
  s.description = 'Soto connects to TeamCity REST API and extracts revision number for last successful TeamCity build'
  s.authors = ['Michał Łukasiewicz']
  s.email = 'michal.lukasiewicz@gmail.com'
  s.files = %w(lib/commands.rb lib/soto.rb lib/version.rb)
  s.homepage = 'http://brightinventions.pl'
  s.license = 'MIT'

  s.add_dependency 'commander', '~> 4.3'
  s.add_dependency 'highline', '>= 1.7.1'
  s.add_dependency 'nokogiri', '~> 1.6'
end
