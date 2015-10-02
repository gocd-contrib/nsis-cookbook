yum_repository 'nsis' do
  description "NSIS RPM Repository"
  baseurl     "http://www.go.cd/nsis-rpm/"
  gpgcheck    false
  action      :create
end

package 'mingw32-nsis'
