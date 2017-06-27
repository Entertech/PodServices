Pod::Spec.new do |s|

  s.name         = "MTA"
  s.version      = "2.0.2"
  s.summary      = "An unofficial MTA SDK Cocoapods repository."
  s.homepage     = "https://mta.qq.com"
  s.authors      = { 'HyanCat' => 'https://github.com/HyanCat' }
  s.license           = {
    :type => "Copyright",
    :text => "Copyright https://mta.qq.com"
  }

  s.source       = { :http => 'http://mta.qq.com/mta/resource/download/sdk/mta-ios-stats-sdk-2.0.2.zip' }
  s.platform     = :ios, "7.0"

  s.frameworks = "SystemConfiguration", "CoreTelephony"
  s.libraries = "z", "sqlite3"

  s.public_header_files = "**/MTA.h", "**/MTAConfig.h"
  s.source_files = "**/MTA.h", "**/MTAConfig.h", "**/libmtasdk.a"
  s.vendored_libraries = "**/libmtasdk.a"

  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
end