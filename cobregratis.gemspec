# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cobregratis/version'

Gem::Specification.new do |spec|
  spec.name = "cobregratis"
  spec.version = Cobregratis::VERSION
  spec.authors = ["Rafael Lima"]
  spec.email = "contato@rafael.adm.br"
  spec.description = "Ruby Wrapper around Cobre Gr\u{e1}tis API. More info at: http://cobregratispec.com.br/doc/api"
  spec.summary = "Ruby Wrapper around Cobre Gr\u{e1}tis API"
  spec.homepage = "http://github.com/BielSystems/cobregratis-ruby"
  spec.licenses = ["MIT"]
  spec.date = "2014-01-25"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activeresource', "~> 4.0"
  spec.add_runtime_dependency 'activesupport', "~> 4.0"
  spec.add_development_dependency "rake", "10.3.2"
  spec.add_development_dependency 'rspec', "2.14.1"
  spec.add_development_dependency 'bundler', "1.5.3"
  spec.add_development_dependency 'simplecov', "0.8.2"
end

