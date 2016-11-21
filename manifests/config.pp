# == Class: apache::config inherits apache
#
class apache::config inherits apache {

  file { '/var/www/html/index.html':
    ensure => file,
    mode => '0644',
    content => templet( 'apache/index.html.erb' ),
  }
}
