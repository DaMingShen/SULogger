Pod::Spec.new do |s|
  s.name     = 'SULogger' 
  s.version  = '1.1'
  s.license  = "MIT"
  s.summary  = 'a easy tool that can show logs in real time when debugging on real machine' 
  s.homepage = 'https://github.com/DaMingShen/SULogger.git'
  s.author   = { 'DaMingShen' => '446135517@qq.com' }
  s.source   = { :git => 'https://github.com/DaMingShen/SULogger.git', :tag => “1.0” } 
  s.platform = :ios 
  s.source_files = 'SULogger/SULoggerDemo/SULogger/*' 
  s.framework = 'UIKit' 
  s.requires_arc = true
end
