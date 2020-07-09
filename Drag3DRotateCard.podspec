
Pod::Spec.new do |s|
  s.name         = "Drag3DRotateCard"
  s.version      = "0.0.1"
  s.summary      = "Rotate3DImageView framework"
  s.description  = <<-DESC
                  Rotate3DImageView framework pod enable you to view an imageView in 3D rotation with drag swipe to see both sides of the card
                   DESC
  s.homepage     = "https://github.com/jwd-ali/IOS-Portfolio"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Jawad Ali" => "L060214@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/jwd-ali/Drag3DRotateCard.git", :tag => "#{s.version}" }

  s.source_files = "Drag3DRotateCard/**/*.{h,m,swift}"
  s.requires_arc = true
  s.swift_version = "5.0"
  s.frameworks = "XCTest"
  
end
