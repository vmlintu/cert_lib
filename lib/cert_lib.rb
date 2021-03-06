require 'openssl'
require 'base64'
require 'pathname'

class Pathname
  # borrowed from extlib
  def /(path)
    (self + path).expand_path
  end
end
dir = Pathname(__FILE__).dirname.expand_path / 'cert-lib'

require dir / 'cert_serial'
require dir / 'pkey'
require dir / 'cert'
