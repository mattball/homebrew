require 'formula'

class Libmagic < Formula
  url 'ftp://ftp.astron.com/pub/file/file-5.03.tar.gz'
  homepage 'http://www.darwinsys.com/file/'
  md5 'd05f08a53e5c2f51f8ee6a4758c0cc53'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end
