#
#  Be sure to run `pod spec lint QWeatherSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "QWeather"
  spec.version      = "4.9.1"
  spec.summary      = "A short summary of QWeather."
  spec.description  = "A description of QWeather."
  spec.homepage     = "https://github.com/qwd/iOS-SDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "韩笑白" => "hanxiaobai@qweather.com" }
  spec.ios.deployment_target = "9.0"
  spec.osx.deployment_target = "10.10"
  spec.watchos.deployment_target = "2.0"
  spec.source       = { :git => "https://github.com/qwd/iOS-SDK.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = "QWeather.xcframework"
  spec.osx.vendored_frameworks = "QWeather.xcframework"
  spec.watchos.vendored_frameworks = "QWeather.xcframework"
  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  spec.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
