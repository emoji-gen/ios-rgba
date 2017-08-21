#
# Be sure to run `pod lib lint RGBA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RGBA'
  s.version          = '0.1.0'
  s.summary          = 'RGBA color string utilities for Android'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
RGBA color string utilities for Android
                       DESC

  s.homepage              = 'https://github.com/emoji-gen/ios-rgba'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Pine Mizune' => 'pinemz@gmail.com' }
  s.source                = { :git => 'https://github.com/emoji-gen/ios-rgba.git', :tag => s.version.to_s }
  s.social_media_url      = 'https://twitter.com/pine613'
  s.ios.deployment_target = '8.0'
  s.source_files          = 'RGBA/Classes/**/*'
  s.public_header_files   = 'RGBA/Classes/**/*.h'
  s.frameworks            = 'UIKit'
end
