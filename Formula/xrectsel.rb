class Xrectsel < Formula
  desc "Print the geometry of a rectangular screen region"
  homepage "https://github.com/lolilolicon/xrectsel"
  url "https://github.com/lolilolicon/xrectsel/archive/0.3.tar.gz"
  sha256 "f4443ab528ed63c2a6500a0470514b67c079e2e9c740be08b81846517a6ba7bc"

  # NOTE: this package depends on X11 (libX11), but i don't declare it
  # or any other dependencies here since i know that my system provides them.

  def install
    system "./bootstrap"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
