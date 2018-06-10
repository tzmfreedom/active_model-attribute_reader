
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_model/attribute_reader/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_model-attribute_reader'
  spec.version       = ActiveModel::AttributeReader::VERSION
  spec.authors       = ['tzmfreedom']
  spec.email         = ['makoto_tajitsu@hotmail.co.jp']

  spec.summary       = %q{allow ActiveModel constructor parameters with attribute_reader attributes}
  spec.description   = %q{allow ActiveModel constructor parameters with attribute_reader attributes}
  spec.homepage      = 'https://github.com/tzmfreedom/active_model-attribute_reader'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'activemodel'
end
