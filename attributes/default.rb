default['sysfs']['package'] = 'sysfsutils'
default['sysfs']['service'] = 'sysfsutils'

default['sysfs']['init_type'] = value_for_platform(
  %w(redhat centos): {
    default: (node['platform_version'].to_f >= 7 ? 'systemd' : 'sysv')
  },
  default: nil
)

default['sysfs']['disable_tuned'] = value_for_platform(
  %w(redhat centos): {
    default: (node['platform_version'].to_f >= 7)
  },
  default: false
)
