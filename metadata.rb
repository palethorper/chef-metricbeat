name 'metricbeat'

maintainer 'Virender Khatri'
maintainer_email 'vir.khatri@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures Elastic metricbeat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.14'

source_url 'https://github.com/vkhatri/chef-metricbeat' if respond_to?(:source_url)
issues_url 'https://github.com/vkhatri/chef-metricbeat/issues' if respond_to?(:issues_url)

chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'yum'
depends 'apt'
depends 'windows'
depends 'yum-plugin-versionlock'
depends 'elastic_beats_repo'

%w(ubuntu centos amazon redhat fedora windows).each do |os|
  supports os
end
