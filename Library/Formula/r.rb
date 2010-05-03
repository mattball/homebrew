require 'formula'

class R <Formula
  url 'http://cran.r-project.org/src/base/R-2/R-2.11.0.tar.gz'
  homepage 'http://www.R-project.org/'
  md5 'c6c1e866299f533617750889c729bfb3'
  
  depends_on 'gfortran'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make install"
    system "mkdir #{prefix}/bin"
    system "ln -s #{prefix}/R.framework/Resources/R #{prefix}/bin/R"
  end
end
