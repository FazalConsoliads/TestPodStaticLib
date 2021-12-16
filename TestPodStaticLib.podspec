#
# Be sure to run `pod lib lint TestPodStaticLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestPodStaticLib'
  s.version          = '1.2.0'
  s.summary          = 'A short description of TestPodStaticLib.'

  s.description      = <<-DESC
A testing static lib pod used to check how static lib can be used.
                       DESC

  s.homepage         = 'https://github.com/FazalConsoliads/TestPodStaticLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FazalElahi' => 'fazal.elahi@consoliads.com' }
  s.source           = { :git => 'https://github.com/FazalConsoliads/TestPodStaticLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TestPodStaticLib/Classes/**/*'

  s.requires_arc = true
  
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
  }
  
  s.user_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
  }
  
  s.ios.vendored_libraries = 'TestPodStaticLib/libConsoliMediation.a','TestPodStaticLib/libConsoliAdsInApp.a','TestPodStaticLib/libconsoliads-mediation.a','TestPodStaticLib/libConsoliAd.a','TestPodStaticLib/libCAAnalytics.a'
  
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TestPodStaticLib"'
  }
  
  # s.resource_bundles = {
  #   'TestPodStaticLib' => ['TestPodStaticLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
