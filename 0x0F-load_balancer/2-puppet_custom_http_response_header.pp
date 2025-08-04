# Configures Nginx to add X-Served-By header using Puppet

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/conf.d/served_by.conf':
  ensure  => file,
  content => "add_header X-Served-By \$hostname;\n",
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
}