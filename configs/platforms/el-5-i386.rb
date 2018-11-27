platform "el-5-i386" do |plat|
  plat.servicedir "/etc/rc.d/init.d"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "sysv"

  plat.add_build_repository "http://pl-build-tools.delivery.puppetlabs.net/yum/el/5/i386/pl-build-tools-release-5-1.noarch.rpm"
  plat.provision_with "yum install -y --nogpgcheck autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign rpm-build; echo '[build-tools]\nname=build-tools\nbaseurl=http://straylen.web.cern.ch/straylen/pl-tools5/el/5/$basearch' > /etc/yum.repos.d/build-tools.repo"
  plat.install_build_dependencies_with "yum install -y --nogpgcheck "
  plat.vmpooler_template "centos-5-i386"
end
