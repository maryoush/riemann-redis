require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-redis'

  s.name = 'riemann-redis'
  s.version = '0.2.2'
  s.author = 'Fede Borgnia'
  s.email = 'fborgnia@gmail.com'
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