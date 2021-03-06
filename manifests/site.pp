node default {
  user { 'linux':
    ensure => present,
  }
  file {'/root/README':
    ensure  => file,
    content => 'this is a readme file',
    owner   => 'linux',
  }
}
node 'centos03.olimpo.com' {
  include role::master_server
  file {'/root/README':
    ensure  => file,
    content => "The hostname is: ${fqdn}\n",
  }
}
node 'centos04.olimpo.com' {
  include role::docker_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
