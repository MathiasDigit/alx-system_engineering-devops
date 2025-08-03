file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
  content => "Host web-01\n  HostName 54.209.154.80\n  User ubuntu\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
}
