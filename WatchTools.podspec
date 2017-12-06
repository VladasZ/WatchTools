Pod::Spec.new do |s|
s.name           = 'WatchTools'
s.version        = '0.2.3'
s.summary        = "WatchOS tools kit to make your life easier."
s.homepage       = "https://github.com/VladasZ/WatchTools"
s.author         = { 'Vladas Zakrevskis' => '146100@gmail.com' }
s.source         = { :git => 'https://github.com/VladasZ/WatchTools.git', :tag => s.version }
s.watchos.deployment_target = '2.1'
s.source_files   = 'Sources/**/*.swift'
s.license        = 'MIT'
s.dependency 'SwiftyTools'
end
