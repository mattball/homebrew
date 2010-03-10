require 'formula'

class Cln <Formula
  url 'http://www.ginac.de/CLN/cln-1.3.1.tar.bz2'
  homepage 'http://www.ginac.de/CLN/'
  md5 'ede584cb1cafa66d56f42a3cf420469d'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
