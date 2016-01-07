yum_repository 'nsis' do
  description "NSIS RPM Repository"
  baseurl     "https://www.go.cd/nsis-rpm/"
  gpgcheck    false
  action      :create
end

package 'mingw32-nsis' do
  if node['nsis']['version'] == 'latest'
    action :upgrade
  else if node['nsis']['version']
    version node['nsis']['version']
  end
end
