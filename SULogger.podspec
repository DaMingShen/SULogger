Pod::Spec.new do |s|
  s.name     = 'SULogger' 
  s.version  = ‘1.0’ 
  s.license  = "MIT"  //开源协议
  s.summary  = '真机调试实时可视化显示log日志工具' //简单的描述 
  s.homepage = 'https://github.com/DaMingShen/SULogger.git' //主页
  s.author   = { 'DaMingShen' => '446135517@qq.com' } //作者
  s.source   = { :git => 'https://github.com/DaMingShen/SULogger.git', :tag => “1.0” } //git路径、指定tag号
  s.platform = :ios 
  s.source_files = 'SULogger/SULoggerDemo/SULogger/*’  //库的源代码文件
  s.framework = 'UIKit'  //依赖的framework
  s.requires_arc = true
end