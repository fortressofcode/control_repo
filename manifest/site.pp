node default {
  file {'/tmp/README':
    ensure => file,
    content => 'this is a readme file',
  }
}
