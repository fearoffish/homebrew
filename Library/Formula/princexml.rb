require 'formula'

class Princexml <Formula
  url 'http://www.princexml.com/download/prince-7.0b1-macosx.tar.gz'
  homepage 'http://www.princexml.com/'
  md5 'd6b107df4155e0363fc5b1f3a22c9976'
  version '7.0b1'

  def install
    # Remove the need for manual input and whack it in our Cellar!
    inreplace 'install.sh' do |contents| 
      contents.gsub! /prefix=\/usr\/local/, 'prefix=/usr/local/Cellar/princexml/7.0b1'
      contents.gsub! /read input/, ''
    end
    system "./install.sh"
  end
end