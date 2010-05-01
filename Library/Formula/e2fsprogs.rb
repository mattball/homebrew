require 'formula'

class E2fsprogs <Formula
  url 'http://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/1.41.9/e2fsprogs-1.41.9.tar.gz'
  homepage 'http://e2fsprogs.sourceforge.net/'
  md5 '52f60a9e19a02f142f5546f1b5681927'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end
