Pod::Spec.new do |s|

  s.name         = "ReYunTrackingIO"
  s.version      = "1.8.4"
  s.summary      = "Official ReYun Tracking SDK for iOS"
  s.homepage         = "https://www.reyun.com"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "feiyang" => "3196817369@qq.com" }

  s.platform     = :ios

  s.platform = :ios, "9.0"
  
  s.source        = { :git => "https://github.com/reyun-ios/tracking.git", :tag => s.version }

  s.source_files  = 'Tracking/*.{h,a}'

  s.ios.vendored_library = "Tracking/*.a"

  s.static_framework = true

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TrackingSDK/Tracking/**"' }
  
  s.frameworks = 'SystemConfiguration','AdSupport','CoreTelephony','Security','CoreMotion',"iAd",'AVFoundation','WebKit','CFNetwork'

  s.libraries  = 'sqlite3',"z","resolv"

end
