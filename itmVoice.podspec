
Pod::Spec.new do |s|

  s.name         = "itmVoice"
  s.version      = "1.0.2"
  s.summary      = "voice record and play, using speed and ogg."
  s.description  = "This version has setted as document.And also I has added missing parts :)"

  s.homepage     = "https://github.com/Clintlin/itmVoice"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author             = { "Clint" => "linguanjie@gmail.com" }
  s.platform     = :ios, "8.0"



  s.source       = { :git => "https://github.com/Clintlin/itmVoice.git", :tag => "1.0.2" }
  #set Classes

  s.subspec 'Classes' do |cls|
    cls.source_files = "itmVoice/Classes/*"

    # add Codec dir
    cls.subspec 'Codec' do |code|
      code.source_files = "itmVoice/Classes/Codec/*"
    end

    # add PublicUtility
    cls.subspec 'PublicUtility' do |p|
      p.source_files = "itmVoice/Classes/PublicUtility/*"
    end
  end


  #set Libs

  s.subspec 'Libs' do |lib|
    lib.source_files = "itmVoice/Libs/config.h"

    # add libogg
    lib.subspec 'libogg' do |ogg|
      ogg.source_files = "itmVoice/Libs/libogg/*"

      # add ogg
      ogg.subspec 'ogg' do |ogg_|
        ogg_.source_files = "itmVoice/Libs/libogg/ogg/*"
      end

    end

    # add libspeex
    lib.subspec 'libspeex' do |lx|
      lx.source_files = "itmVoice/Libs/libspeex/*"

      # add speex
      lx.subspec 'speex' do |x|
        x.source_files = "itmVoice/Libs/libspeex/speex/*.h"
      end

    end
    
  end

  s.source_files = "itmVoice/itmVoiceRecorderBase.{h,m}"
  s.requires_arc = true


  # add some libs
  


end
