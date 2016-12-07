class Xnelson < Formula
  desc "Nelson, for X"
  homepage "https://github.com/woodruffw/xnelson"
  url "https://github.com/woodruffw/xnelson/archive/1.0.tar.gz"
  sha256 "d7dd85ed3c2b3dfebb8b24456e929ed39f546ca0482d4d0d2f306c78307941fb"

  # NOTE: this package depends on X11 (libX11), but i don't declare it
  # or any other dependencies here since i know that my system provides them.

  def install
    system "make"
    bin.install "xnelson"
    man1.install "xnelson.1"
  end
end
