require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-redis-hybris'

  s.name = 'riemann-redis-hybris'
  s.version = '0.2.6'
  s.author = 'Mariusz Donigiewicz'
  s.email = 'mariusz.donigiewicz@gmail.com'
  s.homepage = 'https://github.com/maryoush/riemann-redis'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Redis client that submits events to Riemann.'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'redis', '>= 3.0.2'

  s.files = FileList['lib/**/*', 'bin/*', 'LICENSE', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.require_path = 'lib'
  s.has_rdoc = false

  s.required_ruby_version = '>= 1.8.7'
end

Gem::PackageTask.new gemspec do |p|
end

RDoc::Task.new do |rd|
  rd.main = 'Riemann redis'
  rd.title = 'Riemann redis - hybris extension'
  rd.rdoc_dir = 'doc'
end
