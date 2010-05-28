require 'formula'

class Tsmuxer <Formula
  url 'http://www.smlabs.net/tsMuxer/tsMuxeR_1.10.6.dmg'
  homepage 'http://www.smlabs.net/tsMuxer'
  md5 '4c363f84d5ba9d59608b442aa1c024f7'

  def install
    system "hdiutil attach tsMuxeR_1.10.6.dmg"
    system "cp -R /Volumes/tsMuxeR/* ."
    bin.install "tsMuxerGUI.app/Contents/MacOS/tsMuxeR"
    system "hdiutil detach /Volumes/tsMuxeR"
  end
end
