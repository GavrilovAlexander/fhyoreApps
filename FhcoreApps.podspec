#
# Be sure to run `pod lib lint FhcoreApps.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FhcoreApps"
  s.version          = "0.1.5"
  s.summary          = "FhcoreApps presents a view controller similar to the App Store to show your apps."
  s.description      = <<-DESC
                       FhcoreApps is an iOS library created to present a view controller inside your application to show your developer page of apps. It is very similar to the App Store visual.
                       DESC
  s.homepage         = "https://github.com/ftapps/FhcoreApps"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Felipe Tumonis" => "ftumonis@gmail.com" }
  s.source           = { :git => "https://github.com/ftapps/FhcoreApps.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FhcoreApps' => ['*.lproj']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'SDWebImage', '~>3.7'
end
