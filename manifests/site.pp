
node default {
  file {'/root/README':
    ensure  => file,
    content => 'this is a readme file',
    owner   => 'linux',
  }
}
node 'centos03.olimpo.com' {
  include role::master_server
}
node 'centos04.olimpo.com' {
  include role::docker_server
}

