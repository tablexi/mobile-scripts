
Gem::Specification.new do |spec|
  spec.name          = 'mobile_scripts'
  spec.version       = '1.0.2'
  spec.authors       = ['Mobile team at Table XI']
  spec.summary       = 'A collection of scripts frequently used on mobile projects at Table XI.'
  spec.files         = Dir.glob('{bin,lib}/**/*')
  spec.bindir        = 'bin'
  spec.add_runtime_dependency 'colorize'
  spec.executables   = [
    'clean',
    'setup',
    'start-dev'
  ]
end
