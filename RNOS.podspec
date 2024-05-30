require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = "RNOS"
  s.version      = "1.2.7"
  s.summary      = "React Native OS module"
  s.description  = <<-DESC
                    React Native module to get OS information.
                    DESC
  s.homepage     = "https://github.com/cuddimatic/react-native-os"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "Anthony Nwaizuzu" => "tonychuks9@live.com" }
  s.source       = { :git => "https://github.com/cuddimatic/react-native-os.git", :tag => "#{s.version}" }
  s.platform     = :ios, "9.0"
  s.source_files  = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React-Core"
end