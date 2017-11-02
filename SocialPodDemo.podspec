Pod::Spec.new do |s|
  s.name             = 'SocialPodDemo'
  s.version          = '0.1.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'

  s.description      = ‘Social Demo Pod File’
  s.homepage         = 'https://github.com/Narendra25121989/SocialPodDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = {‘Narendra’ => 'Narendra25121989'}
  s.source           = { :git => 'https://github.com/Narendra25121989/SocialPodDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = ‘8.0’
  s.source_files = 'SocialPodDemo/FBHelper.swift'

end