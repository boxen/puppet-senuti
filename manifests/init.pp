# Public: Install Senuti to /Applications
#
# Examples
#
#  class { 'senuti': }
class senuti (
  $version = '1.2.9',
) {

  package { 'Senuti':
    provider => 'compressed_app',
    source   => "https://www.fadingred.com/files/senuti/senuti_${version}.zip"
  }

}
