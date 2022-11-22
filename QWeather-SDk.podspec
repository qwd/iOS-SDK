#
#  Be sure to run `pod spec lint QWeatherSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "QWeather-SDK"
  s.version      = "4.9.1"
  s.summary      = "A short summary of QWeather."
  s.description  = "A description of QWeather."
  s.homepage     = "https://github.com/qwd/iOS-SDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "韩笑白" => "hanxiaobai@qweather.com" }
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  # s.watchos.deployment_target = "2.0"
  s.source       = { :git => "https://github.com/qwd/iOS-SDK.git", :tag => s.version.to_s  }
  s.vendored_frameworks = "QWeather.xcframework"
  # s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  # s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'}
  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather' }
  s.osx.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather' }
  # s.watchos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather-watchOS' }
  s.dependency 'AFNetworking', '~> 4.0.1'
end
