Pod::Spec.new do |s|
  s.name         = "SwiftEssentials"
  s.version      = "1.0.0"
  s.summary      = "SwiftEsstentials provides architectures and UIKit extensions to make your UI workflow pleasant"
  s.homepage     = "https://github.com/Limoo/SwiftEssentials"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = "Tibor Leon Hahne"
  s.source       = { :git => "https://github.com/Limoo/SwiftEssentials", :tag => s.version.to_s }
  #s.frameworks   = 'UIKit', 'QuartzCore'
  s.requires_arc = true
  s.source_files = 'Sources/*'
  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'
end
