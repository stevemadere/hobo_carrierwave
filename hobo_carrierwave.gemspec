# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = 'hobo_carrierwave'
  s.summary = 'Extends hobo field types to work seamlessly with carrierwave attachments'
  s.description = 'Extends hobo field types to work seamlessly with carrierwave attachments'
  s.email = 'steve@stevemadere.com'
  s.homepage = 'https://github.com/stevemadere/hobo_carrierwave'
  s.license = 'MIT'
  s.version = '0.0.1'
  s.authors = 'Steve Madere'
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'
  s.add_dependency 'hobo_fields'
end
