Pod::Spec.new do |s|
  s.name             = "SwiftBus"
  s.version          = "1.5.2"
  s.summary          = "Asynchronous Swift wrapper for the NextBus API."

  s.homepage         = "https://github.com/MrAdamBoyd/SwiftBus"
  s.author           = "Adam Boyd"
  s.source           = { :git => "https://github.com/MrAdamBoyd/SwiftBus.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MrAdamBoyd'

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.requires_arc = true
  s.frameworks   = 'Foundation'
  s.osx.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/MacOSX.platform/Developer/Library/Frameworks"' }
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

  s.source_files = 'Pod/Classes/**/*'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.dependency 'SWXMLHash', '~> 5.0'
end
