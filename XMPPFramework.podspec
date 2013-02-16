Pod::Spec.new do |s|
  s.name           = 'XMPPFramework'
  s.homepage       = 'https://github.com/gfodor/XMPPFramework'
  s.version        = '3.5.0'
  s.author         = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.license        = { :type => 'BSD', :file => 'copying.txt' }
  s.summary        = 'An XMPP Framework in Objective-C for Mac and iOS'
  s.description    = "XMPPFramework fork for iOS"
  s.source         = { :git => 'https://github.com/gfodor/XMPPFramework.git' }
  s.source_files   = 'Core', 'Categories', 'Utilities', 'Authentication/**/*.{h,m}'
  s.requires_arc   = true

  s.dependency       'CocoaLumberjack', '~>1.6'
  s.dependency       'CocoaAsyncSocket'
  s.ios.dependency   'KissXML'
  s.libraries      = 'resolv', 'idn'

  LIBIDN_PATH = 'Vendor/libidn'
  s.preserve_paths = LIBIDN_PATH
  s.xcconfig       = {
    'HEADER_SEARCH_PATHS'  => "$(PODS_ROOT)/#{s.name}/#{LIBIDN_PATH}",
    'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/#{s.name}/#{LIBIDN_PATH}",
  }
end
