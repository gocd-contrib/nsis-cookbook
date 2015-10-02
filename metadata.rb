name             'nsis'
maintainer       'Ketan Padegaonkar'
maintainer_email 'ketanpadegaonkar@gmail.com'
license          'MIT'
description      'Installs/Configures NSIS'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum'


%w{centos redhat}.each do |os|
  supports os
end
