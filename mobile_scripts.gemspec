
Gem::Specification.new do |spec|
  spec.name          = 'mobile_scripts'
  spec.version       = '1.0'
  spec.authors       = ['Mobile team at Table XI']
  spec.summary       = 'A collection of scripts frequently used on mobile projects at Table XI.'
  spec.files         = Dir.glob('{bin,lib}/**/*')
  spec.bindir        = 'bin'
  spec.executables   = Dir.glob('{bin}/**/*')
end
