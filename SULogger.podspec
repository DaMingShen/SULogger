Pod::Spec.new do |s|
  s.name     = 'SULogger'
  s.version  = '1.2'
  s.license  = "MIT"
  s.summary  = 'show log on real mechine debugging'
  s.homepage = 'https://github.com/DaMingShen/SULogger.git'
  s.author   = { 'DaMingShen' => '446135517@qq.com' }
  s.source   = { :git => 'https://github.com/DaMingShen/SULogger.git', :tag => "1.2" }
  s.platform = :ios  
  s.source_files = "SULogger.{h,m}"
  s.framework = 'UIKit'
  s.requires_arc = true
end
