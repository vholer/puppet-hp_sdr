# hp_sdr::mcp
#
# Configure repository for Management Component Pack for ProLiant.
#
# @summary Configure repository for Management Component Pack for ProLiant.
#
# Same parameters valid hp_sdr::repo
#
# @example
#   include hp_sdr::mcp
class hp_sdr::mcp (
  $ensure   = $hp_sdr::params::ensure,
  $version  = $hp_sdr::params::version,
  $gpgcheck = $hp_sdr::params::gpgcheck,
  $dist     = $hp_sdr::params::dist,
  $release  = $hp_sdr::params::release,
  $arch     = $hp_sdr::params::arch,
  $url_base = $hp_sdr::params::url_base,
  $url_repo = $hp_sdr::params::url_repo
) inherits hp_sdr::params {

  hp_sdr::repo { 'mcp':
    ensure   => $ensure,
    version  => $version,
    gpgcheck => $gpgcheck,
    dist     => $dist,
    release  => $release,
    arch     => $arch,
    url_base => $url_base,
    url_repo => $url_repo,
  }
}
