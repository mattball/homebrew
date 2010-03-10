require 'formula'

class Ginac <Formula
  url 'http://www.ginac.de/ginac-1.5.6.tar.bz2'
  homepage 'http://www.ginac.de/'
  md5 '5a13bf1a29d5aaf4f6085058447229b9'

  depends_on 'cln'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
