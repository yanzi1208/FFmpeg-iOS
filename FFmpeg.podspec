Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "2.8"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/yanzi1208/FFmpeg-iOS"
  
  s.license      = 'MIT'
  s.author       = { "yanzi1208" => "zhaokaiyan1208@126.com" } # Podspec maintainer
  s.requires_arc = true
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/yanzi1208/FFmpeg-iOS.git", :tag => "2.8", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'FFmpeg-iOS/include/**/*.h'
    ss.public_header_files = 'FFmpeg-iOS/include/**/*.h'
    ss.header_mappings_dir = 'FFmpeg-iOS/include'
    ss.vendored_libraries  = 'FFmpeg-iOS/lib/*.a'
    ss.libraries = 'libavcodec', libavdevice', 'libavfilter', 'libavformat', 'libavutil', 'libswresample', 'libswscale'
  end

end
