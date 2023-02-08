# @summary A short summary of the purpose of this class
#
# Moves the following files into docroot:
# 
# files/
#   index.html
#   css/
#     main.css
#     normalize.css
#   img/
#     favicon.ico
#
# @example
#   include pe_intro_hello_world::website
class pe_intro_hello_world::website {

  file { 'index.html':
    ensure  => file,
    path    => '/var/www/',
    source  => 'puppet:///modules/pe_intro_hello_world/index.html',
  }

  file { 'css-directory':
    ensure  => directory,
    path    => '/var/www/',
    source  => 'puppet:///modules/pe_intro_hello_world/css',
    recurse => true,
  }

  file { 'img-directory':
    ensure  => directory,
    path    => '/var/www/',
    source  => 'puppet:///modules/pe_intro_hello_world/img',
    recurse => true,
  }

  file { 'js-directory':
    ensure  => directory,
    path    => '/var/www/',
    source  => 'puppet:///modules/pe_intro_hello_world/js',
    recurse => true,
  }
}
