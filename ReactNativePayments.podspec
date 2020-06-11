require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package["version"]
giturl = package["repository"]
homepage = package["homepage"]

Pod::Spec.new do |s|
  s.name         = "ReactNativePayments"
  s.version      = version
  s.summary      = "ReactNativePayments"
  s.description  = "ReactNativePayments"
  s.homepage     = homepage
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = "British Gas"
  s.platform     = :ios, "9.0"
  s.source       = { :git => giturl, :tag => version }
  s.source_files  = "lib/ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  