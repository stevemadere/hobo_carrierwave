# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

# Maintain your gem's version:
require "hobo_carrierwave/version"

Gem::Specification.new do |s|
  s.name = 'hobo_carrierwave'
  s.version = HoboCarrierwave::VERSION
  s.summary = 'Extends hobo field types to work seamlessly with carrierwave attachments'
  s.description = 'Extends hobo field types to work seamlessly with carrierwave attachments'
  s.email = 'steve@stevemadere.com'
  s.homepage = 'https://github.com/stevemadere/hobo_carrierwave'
  s.license = 'MIT'
  s.authors = 'Steve Madere'
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'
  s.add_dependency 'hobo_fields'
  s.add_dependency 'carrierwave'
end
