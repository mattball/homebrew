require 'formula'

class Gfortran <Formula
  url 'http://r.research.att.com/gfortran-4.2.3.dmg'
  homepage 'http://r.research.att.com/tools/'
  md5 '9551fc46f55537dd1db581154daf27ef'

  def install
    system "hdiutil attach gfortran-4.2.3.dmg"
    # Yeah. the next 7 lines are ugly- should be a way to unzip the
    # archive on the .dmg volume and then pipe it to something like
    # pax or cpio that dumps it in the prefix directory.  My ninja
    # skillz arn't quite at that level yet.
    system 'cp /Volumes/GNU\ Fortran\ 4.2.3/gfortran.pkg/Contents/Resources/gfortran.pax.gz .'
    system 'hdiutil detach /Volumes/GNU\ Fortran\ 4.2.3'
    system "rm gfortran-4.2.3.dmg"
    system "gunzip gfortran.pax.gz"
    system 'pax -r -s "/usr\/local//" -f gfortran.pax'
    # The pax archive doesn't have write permessions set on it, hence
    # the need for the -f flag when removing.
    system "rm -f gfortran.pax"
    system "ls | xargs -I % cp -r % #{prefix}/%"
  end
end
