require 'formula'

class Netcdf <Formula
  url 'ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.0.1.tar.gz'
  homepage 'http://www.unidata.ucar.edu/software/netcdf/'
  md5 'a251453c5477599f050fa4e593295186'

  def install
    # Only works under 32-bit mode, for some reason.
    ENV.m32
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
