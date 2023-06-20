#
#  Be sure to run `pod spec lint QWeatherSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "QWeather-SDK"
  s.version      = "4.17"
  s.summary      = "和风天气官方SDK"
  s.description  = "支持iOS真机和模拟器，支持macOS"
  s.homepage     = "https://github.com/qwd/iOS-SDK"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author       = { "xiaobai" => "hanxiaobai@qweather.com" }
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.15"
  s.watchos.deployment_target = "4.0"
  s.source = { :http => 'https://a.hecdn.net/download/api_sdk/QWeather_iOS_SDK_Pub_V4.17.zip',
                :sha256 => 'cdc311840049ee9ae3e69c9b343253def4af11865da0a5f32d34dd8969bd075c' }
  s.vendored_frameworks = "QWeather.xcframework"
  s.preserve_paths = "QWeather.xcframework"
  # s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  # s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'}
  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather' }
  s.osx.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather' }
  s.watchos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.qwd.QWeather-watchOS' }
end
